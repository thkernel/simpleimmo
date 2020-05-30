class PropertiesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_property, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property_types = PropertyType.all
    @landlords = Landlord.all
    @buildings = Building.all
    @cities = City.all
    @property = Property.new
  end

  # GET /properties/1/edit
  def edit
    @property_types = PropertyType.all
    @landlords = Landlord.all
    @buildings = Building.all
    @cities = City.all
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = current_user.properties.build(property_params)

    respond_to do |format|
      if @property.save

        @properties = Property.all

        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
        format.js
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        @properties = Property.all

        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


    def delete
      @property = Property.find(params[:property_id])
    end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:building, :landlord_id, :property_type_id, :reference, :description, :pieces_number, :room_number, :bath_room, :rent_excluding_tax, :address, :city_id, :neighborhood, :street, :door, :surface, :value, :about)
    end
end
