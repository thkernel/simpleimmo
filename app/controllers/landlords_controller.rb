class LandlordsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_landlord, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET /landlords
  # GET /landlords.json
  def index
    @landlords = Landlord.all
  end

  # GET /landlords/1
  # GET /landlords/1.json
  def show
  end

  # GET /landlords/new
  def new
    @landlord_types = LandlordType.all
    @landlord = Landlord.new
  end

  # GET /landlords/1/edit
  def edit
    @landlord_types = LandlordType.all
  end

  # POST /landlords
  # POST /landlords.json
  def create
    @landlord = current_user.landlords.build(landlord_params)

    respond_to do |format|
      if @landlord.save
        @landlords = Landlord.all

        format.html { redirect_to @landlord, notice: 'Landlord was successfully created.' }
        format.json { render :show, status: :created, location: @landlord }
        format.js
      else
        format.html { render :new }
        format.json { render json: @landlord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landlords/1
  # PATCH/PUT /landlords/1.json
  def update
    respond_to do |format|
      if @landlord.update(landlord_params)
        @landlords = Landlord.all
        format.html { redirect_to @landlord, notice: 'Landlord was successfully updated.' }
        format.json { render :show, status: :ok, location: @landlord }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @landlord.errors, status: :unprocessable_entity }
      end
    end
  end


    def delete
      @landlord = Landlord.find(params[:landlord_id])
    end

  # DELETE /landlords/1
  # DELETE /landlords/1.json
  def destroy
    @landlord.destroy
    respond_to do |format|
      format.html { redirect_to landlords_url, notice: 'Landlord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landlord
      @landlord = Landlord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def landlord_params
      params.require(:landlord).permit(:landlord_type_id, :civility, :last_name, :first_name, :birth_date, :birth_place, :id_type, :id_number, :id_expiration, :profession, :nationality, :company_name, :address, :phone, :city, :country, :email, :about)
    end
end
