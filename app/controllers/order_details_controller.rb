class OrderDetailsController < ApplicationController
  def index
    @order = Order.find(params[:order_id])
    @order_details = OrderDetail.where(order: @order)
    @order_detail = OrderDetail.new
  end

  def create
    @order = Order.find(params[:order_id])
    @order_detail = OrderDetail.new(order_detail_params)
    @order_detail.order = @order
    if @order_detail.save
      redirect_to order_order_details_path(@order)
    else
      render :index
    end
  end

  private
  def order_detail_params
    params.require(:order_detail).permit(:meal_id, :quantity)
  end
end
