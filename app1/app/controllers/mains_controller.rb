class MainsController < ApplicationController
def index
end
def destroy
@pol=Pol.find(params[:id])
@pol.update(:status => "surrendered")

flash[:notice]="Policy was surrendered successfully"
redirect_to customers_path
end
end
