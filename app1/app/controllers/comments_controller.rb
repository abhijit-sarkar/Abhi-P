class CommentsController < ApplicationController
def edit
@plan=Plan.find(params[:id])
@coms=Plan.find(params[:id]).comments
@comment=Comment.new
end
def create
@comment=Comment.new(com_params)
@cust=Customer.find_by_client_id(@comment.client_id)
@plan=Plan.find_by_plan_no(@comment.plan_no)
@comment.customer_id=@cust.id
@comment.plan_id=@plan.id
@comment.save
redirect_to plans_path
end
private
def com_params
params.require(:comment).permit(:plan_no,:client_id,:desc)
end
end
