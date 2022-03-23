class CustomersController < ApplicationController
  def index
    @customers = Customer.all
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to customers_path
    else
      render :index
    end
  end

  private
  def customer_params
    params.require(:customer).permit(:name, :address)
  end
end
