class TransactionsController < ApplicationController
  layout "insurance"
  
  def index
    @pol = Policy.last
  end
  
end