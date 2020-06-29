class IncomesController < ApplicationController

  include FilterConcern
  
  before_action :authenticate_user!
  before_action :set_income, only: [:show, :edit, :update, :destroy]
  layout "dashboard"
  # GET /incomes
  # GET /incomes.json
  def index
    @incomes = Income.all
  end

  # GET /incomes/1
  # GET /incomes/1.json
  def show
  end

  # GET /incomes/new
  def new
    @properties = Property.unavailable
    @taxes = Tax.all
    @leases = Lease.all
    @income = Income.new
  end

  # GET /incomes/1/edit
  def edit
    @properties = Property.all
    @taxes = Tax.all
    @leases = Lease.all
  end

  # POST /incomes
  # POST /incomes.json
  def create
    @income = current_user.incomes.build(income_params)

    #Rent payment.

    if @income.start_date.present? && @income.end_date.present?

      start_month = @income.start_date.month
      puts "START MONTH: #{start_month}"

      start_year = @income.start_date.year
      puts "START YEAR: #{start_year}"

      end_month = @income.end_date.month
      puts "END MONTH: #{end_month}"

      end_year = @income.end_date.year
      puts "END YEAR: #{end_year}"

      (start_year .. end_year).each do |current|
        
      end

    end


    respond_to do |format|
      if @income.save
        @incomes = Income.all
        format.html { redirect_to @income, notice: 'Income was successfully created.' }
        format.json { render :show, status: :created, location: @income }
        format.js
      else
        format.html { render :new }
        format.json { render json: @income.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /incomes/1
  # PATCH/PUT /incomes/1.json
  def update
    respond_to do |format|
      if @income.update(income_params)
        @incomes = Income.all
        format.html { redirect_to @income, notice: 'Income was successfully updated.' }
        format.json { render :show, status: :ok, location: @income }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @income.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
    @income = Income.find(params[:income_id])
  end

  # DELETE /incomes/1
  # DELETE /incomes/1.json
  def destroy
    @income.destroy
    respond_to do |format|
      format.html { redirect_to incomes_url, notice: 'Income was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_income
      @income = Income.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def income_params
      params.require(:income).permit(:property_id, :lease_id, :income_type, :payer, :start_date, :end_date, :payment_method, :amount, :received_amount, :tax_id, :total_amount, :receipt_number, :description)
    end
end
