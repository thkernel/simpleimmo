class ExpensesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_expense, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET /expenses
  # GET /expenses.json
  def index
    @expenses = Expense.all
  end

  # GET /expenses/1
  # GET /expenses/1.json
  def show
  end

  # GET /expenses/new
  def new
    @properties = Property.all
    @taxes = Tax.all
    @leases = Lease.all
    @expense = Expense.new
  end

  # GET /expenses/1/edit
  def edit
    @properties = Property.all
    @taxes = Tax.all
    @leases = Lease.all
  end

  # POST /expenses
  # POST /expenses.json
  def create
    @expense = current_user.expenses.build(expense_params)

    respond_to do |format|
      if @expense.save
        @expenses = Expense.all
        format.html { redirect_to @expense, notice: 'Expense was successfully created.' }
        format.json { render :show, status: :created, location: @expense }
        format.js
      else
        format.html { render :new }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /expenses/1
  # PATCH/PUT /expenses/1.json
  def update
    respond_to do |format|
      if @expense.update(expense_params)
        @expenses = Expense.all
        format.html { redirect_to @expense, notice: 'Expense was successfully updated.' }
        format.json { render :show, status: :ok, location: @expense }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @expense.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


def delete
      @expense = Expense.find(params[:expense_id])
    end


  # DELETE /expenses/1
  # DELETE /expenses/1.json
  def destroy
    @expense.destroy
    respond_to do |format|
      format.html { redirect_to expenses_url, notice: 'Expense was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_expense
      @expense = Expense.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def expense_params
      params.require(:expense).permit(:property_id, :lease_id, :type, :payer, :start_date, :end_date, :payment_method_id, :amount, :received_amount, :tax_id, :total_amount, :description)
    end
end
