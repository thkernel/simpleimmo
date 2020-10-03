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

    net_amount = @income.total_amount

    if @income.rent_payment?
      if @income.start_date.present? && @income.end_date.present?

        start_date = @income.start_date
        end_date = @income.end_date
      
        months = (start_date.to_date .. end_date.to_date).map{|d|  [d.month, d.year]}.uniq
        
        rent_payments = []

       

        property = Property.find(@income.property_id)


        lease = property.lease.property_enable_lease
       

        months.each do |item|
            #rent_payment =  RentPayment.new
            rent_payment_h = Hash.new
            #rent_payment.lease_id = @income.lease_id
            #rent_payment.month = item[0]  
            #rent_payment.year = item[1]
            rent_payment_h[:lease_id] = lease.id
            rent_payment_h[:month] = item[0] 
            rent_payment_h[:year] = item[1] 
            rent_payments << rent_payment_h

        end

        puts "TO HASH: #{rent_payments}"
        @income.rent_payments.build(rent_payments)
      end
    end

    @income.lease_id = lease.id



    

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
