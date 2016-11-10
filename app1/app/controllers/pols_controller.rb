class PolsController < ApplicationController
def edit
@plan=Plan.find(params[:id])
@pol=Pol.new
@pol.plan_no=@plan.plan_no
end
def destroy
@pol=Pol.find(params[:id])
@pol.destroy
flash[:notice]="Policy was unsubscribed successfully"
redirect_to customers_path
end
def create
@pol=Pol.new(pol_params)
@cust=Customer.find_by_client_id(@pol.client_id)
@pol.cname=@cust.cname
@pol.customer_id=@cust.id
@pol.status="Active"
@pol.save
redirect_to plans_path
end

private
def pol_params
params.require(:pol).permit(:client_id,:cname,:nominee,:sum_insured,:premium,:plan_no,:maturity_date)
end
end
