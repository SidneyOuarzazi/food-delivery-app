class OrdersController < ApplicationController
  def index
    @orders = Order.where(status: "Ready to go")
    @order = Order.new
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @order.employee = Employee.last
    @order.amount = 0
    @order.status = "Pending"
    if @order.save
      redirect_to order_order_details_path(@order)
    else
      render :new
    end
  end

  def update
    @order = Order.find(params[:id])
    @order.status = params[:status]
    if params[:status] == "Pending"
      order_details = OrderDetail.where(order: @order)
      total = 0
      order_details.each do |item|
        total += item.meal.price * item.quantity
      end
      @order.amount = total.round(2)
      @order.save
      redirect_to order_order_details_path(@order)
    else
      @order.save
      redirect_to orders_path
    end
  end

  private
  def order_params
    params.require(:order).permit(:customer_id)
  end
end
