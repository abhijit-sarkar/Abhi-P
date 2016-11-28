class CustomersController < ApplicationController
layout "cust"
def index
@customers=Customer.all
end
def new
@customer=Customer.new
end
def show
@customer=Customer.find(params[:id])
@pols=Customer.find(params[:id]).pols
end
def destroy
@customer=Customer.find(params[:id])
if Pol.exists?(Pol.find_by_customer_id(@customer.id))
flash[:error]="Couldn't delete.The customer is subscribed to policies."
else
@customer.destroy
flash[:notice]="Customer was deleted successfully"
end


redirect_to customers_path
end
def create
@customer=Customer.new(customer_params)
if Customer.exists?(Customer.find_by_client_id(@customer.client_id))
flash[:error]="User exists. Duplicate ID"
else
@customer.save
end
redirect_to customers_path
end
def edit
@customer=Customer.find(params[:id])
end
def update
@customer=Customer.find(params[:id])
if @customer.update(customer_params)
flash[:notice]="Customer was updated successfully"
end
redirect_to customers_path
end
private
def customer_params
params.require(:customer).permit(:client_id,:cname,:contact,:email,:nominee)
end
end
