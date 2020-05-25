class LandlordTypesController < ApplicationController
  before_action :set_landlord_type, only: [:show, :edit, :update, :destroy]

  # GET /landlord_types
  # GET /landlord_types.json
  def index
    @landlord_types = LandlordType.all
  end

  # GET /landlord_types/1
  # GET /landlord_types/1.json
  def show
  end

  # GET /landlord_types/new
  def new
    @landlord_type = LandlordType.new
  end

  # GET /landlord_types/1/edit
  def edit
  end

  # POST /landlord_types
  # POST /landlord_types.json
  def create
    @landlord_type = LandlordType.new(landlord_type_params)

    respond_to do |format|
      if @landlord_type.save
        format.html { redirect_to @landlord_type, notice: 'Landlord type was successfully created.' }
        format.json { render :show, status: :created, location: @landlord_type }
      else
        format.html { render :new }
        format.json { render json: @landlord_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /landlord_types/1
  # PATCH/PUT /landlord_types/1.json
  def update
    respond_to do |format|
      if @landlord_type.update(landlord_type_params)
        format.html { redirect_to @landlord_type, notice: 'Landlord type was successfully updated.' }
        format.json { render :show, status: :ok, location: @landlord_type }
      else
        format.html { render :edit }
        format.json { render json: @landlord_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /landlord_types/1
  # DELETE /landlord_types/1.json
  def destroy
    @landlord_type.destroy
    respond_to do |format|
      format.html { redirect_to landlord_types_url, notice: 'Landlord type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_landlord_type
      @landlord_type = LandlordType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def landlord_type_params
      params.require(:landlord_type).permit(:name, :description, :status, :user_id)
    end
end
