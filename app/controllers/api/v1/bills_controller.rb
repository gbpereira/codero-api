class Api::V1::BillsController < ApplicationController
  def index
    @bills = Bill.all
    render json: @bills
  end
end
