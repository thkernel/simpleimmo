class MandatesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_mandate, only: [:show, :edit, :update, :destroy]

layout "dashboard"
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
    @landlords = Landlord.all 
    @buildings = Building.all 
    @properties = Property.all
    @mandate = Mandate.new
  end

  # GET /mandates/1/edit
  def edit
    @landlords = Landlord.all 
    @buildings = Building.all 
    @properties = Property.all
  end

  # POST /mandates
  # POST /mandates.json
  def create
    @mandate = current_user.mandates.build(mandate_params)

    respond_to do |format|
      if @mandate.save
        @mandates = Mandate.all
        format.html { redirect_to @mandate, notice: 'Mandate was successfully created.' }
        format.json { render :show, status: :created, location: @mandate }
        format.js
      else
        format.html { render :new }
        format.json { render json: @mandate.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /mandates/1
  # PATCH/PUT /mandates/1.json
  def update
    respond_to do |format|
      if @mandate.update(mandate_params)
        @mandates = Mandate.all
        format.html { redirect_to @mandate, notice: 'Mandate was successfully updated.' }
        format.json { render :show, status: :ok, location: @mandate }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @mandate.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


    def delete
      @mandate = Mandate.find(params[:mandate_id])
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
      params.require(:mandate).permit( :building_id, :property_id, :usage_type, :start_date, :end_date, :duration, :id_type, :id_number, :periodicity, :property_value, :commission_rate, :commission_amount, :vat_rate, :net_amount,  :notes)
    end
end
