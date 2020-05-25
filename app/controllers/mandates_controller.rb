class MandatesController < ApplicationController
  before_action :set_mandate, only: [:show, :edit, :update, :destroy]

  # GET /mandates
  # GET /mandates.json
  def index
    @mandates = Mandate.all
  end

  # GET /mandates/1
  # GET /mandates/1.json
  def show
  end

  # GET /mandates/new
  def new
    @mandate = Mandate.new
  end

  # GET /mandates/1/edit
  def edit
  end

  # POST /mandates
  # POST /mandates.json
  def create
    @mandate = Mandate.new(mandate_params)

    respond_to do |format|
      if @mandate.save
        format.html { redirect_to @mandate, notice: 'Mandate was successfully created.' }
        format.json { render :show, status: :created, location: @mandate }
      else
        format.html { render :new }
        format.json { render json: @mandate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mandates/1
  # PATCH/PUT /mandates/1.json
  def update
    respond_to do |format|
      if @mandate.update(mandate_params)
        format.html { redirect_to @mandate, notice: 'Mandate was successfully updated.' }
        format.json { render :show, status: :ok, location: @mandate }
      else
        format.html { render :edit }
        format.json { render json: @mandate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mandates/1
  # DELETE /mandates/1.json
  def destroy
    @mandate.destroy
    respond_to do |format|
      format.html { redirect_to mandates_url, notice: 'Mandate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mandate
      @mandate = Mandate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mandate_params
      params.require(:mandate).permit(:landlord_id, :building_id, :property_id, :usage_type, :start_date, :end_date, :duration, :id_type, :id_number, :periodicity, :property_value, :commission_rate, :commission_amount, :vat_rate, :net_amount, :status, :notes, :user_id)
    end
end
