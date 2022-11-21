class ExpensesController < ApplicationController
  before_action :set_incoming , only: [:show, :edit, :update, :destroy]

  def index
    @expenses = Expense.all
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expenses_params)
    if @expenses.save
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    @expense.update(expenses_params)
    redirect_to root_path
  end

  def destroy
    @expense.destroy
    redirect_to root_path
  end

  private
  def expenses_params
    params.require(:expenses).permit(:name, :amount, :category)
  end

  def set_expenses
    @expense = Expense.find(params[:id])
  end

end
