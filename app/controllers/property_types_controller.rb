class PropertyTypesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_property_type, only: [:show, :edit, :update, :destroy]

layout "dashboard"

  # GET /property_types
  # GET /property_types.json
  def index
    @property_types = PropertyType.all
  end

  # GET /property_types/1
  # GET /property_types/1.json
  def show
  end

  # GET /property_types/new
  def new
    @property_type = PropertyType.new
  end

  # GET /property_types/1/edit
  def edit
  end

  # POST /property_types
  # POST /property_types.json
  def create
    @property_type = current_user.property_types.build(property_type_params)

    respond_to do |format|
      if @property_type.save
        @property_types = PropertyType.all

        format.html { redirect_to @property_type, notice: 'Property type was successfully created.' }
        format.json { render :show, status: :created, location: @property_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @property_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /property_types/1
  # PATCH/PUT /property_types/1.json
  def update
    respond_to do |format|
      if @property_type.update(property_type_params)

        @property_types = PropertyType.all

        format.html { redirect_to @property_type, notice: 'Property type was successfully updated.' }
        format.json { render :show, status: :ok, location: @property_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @property_type.errors, status: :unprocessable_entity }
      end
    end
  end


    def delete
      @property_type = PropertyType.find(params[:property_type_id])
    end

  # DELETE /property_types/1
  # DELETE /property_types/1.json
  def destroy
    @property_type.destroy
    respond_to do |format|
      format.html { redirect_to property_types_url, notice: 'Property type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_type
      @property_type = PropertyType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_type_params
      params.require(:property_type).permit(:name, :description)
    end
end
