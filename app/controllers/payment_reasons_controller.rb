class PaymentReasonsController < ApplicationController
  before_action :set_payment_reason, only: [:show, :edit, :update, :destroy]

  # GET /payment_reasons
  # GET /payment_reasons.json
  def index
    @payment_reasons = PaymentReason.all
  end

  # GET /payment_reasons/1
  # GET /payment_reasons/1.json
  def show
  end

  # GET /payment_reasons/new
  def new
    @payment_reason = PaymentReason.new
  end

  # GET /payment_reasons/1/edit
  def edit
  end

  # POST /payment_reasons
  # POST /payment_reasons.json
  def create
    @payment_reason = PaymentReason.new(payment_reason_params)

    respond_to do |format|
      if @payment_reason.save
        format.html { redirect_to @payment_reason, notice: 'Payment reason was successfully created.' }
        format.json { render :show, status: :created, location: @payment_reason }
      else
        format.html { render :new }
        format.json { render json: @payment_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment_reasons/1
  # PATCH/PUT /payment_reasons/1.json
  def update
    respond_to do |format|
      if @payment_reason.update(payment_reason_params)
        format.html { redirect_to @payment_reason, notice: 'Payment reason was successfully updated.' }
        format.json { render :show, status: :ok, location: @payment_reason }
      else
        format.html { render :edit }
        format.json { render json: @payment_reason.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment_reasons/1
  # DELETE /payment_reasons/1.json
  def destroy
    @payment_reason.destroy
    respond_to do |format|
      format.html { redirect_to payment_reasons_url, notice: 'Payment reason was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment_reason
      @payment_reason = PaymentReason.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment_reason_params
      params.require(:payment_reason).permit(:name, :description, :status, :user_id)
    end
end
