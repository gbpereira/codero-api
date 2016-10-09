class Api::V1::DebtsController < ApplicationController
  def index
    @debts = Debt.all
    render json: @debts
  end
end
