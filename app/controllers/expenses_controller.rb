class ExpensesController < ApplicationController
  before_action :set_expenses , only: [:show, :edit, :update, :destroy]

  def index
    outgoing_amount = []
    incoming_amount = []

    @expenses = Expense.all

    outgoings = Expense.all.where(category: "Outgoing")
    outgoings.each {|e|  outgoing_amount << e.amount }
    @total_outgoing =  outgoing_amount.sum

    incomings = Expense.all.where(category: "Incoming")
    incomings.each {|e|  incoming_amount << e.amount }
    @total_incoming =  incoming_amount.sum

    @total = @total_incoming - @total_outgoing

  end

  def show
  end

  def new
    @expense = Expense.new
  end

  def create
    @expense = Expense.new(expenses_params)
    if @expense.save
      redirect_to root_path
    end
  end

  def edit
  end

  def update
    @expense.update(expenses_params)
    if @expense.save
      redirect_to root_path
    end
  end

  def destroy
    @expense.destroy
    redirect_to root_path
  end

  private
  def expenses_params
    params.require(:expense).permit(:name, :amount, :category)
  end

  def set_expenses
    @expense = Expense.find(params[:id])
  end

end
