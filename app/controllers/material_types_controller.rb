class MaterialTypesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_material_type, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET /material_types
  # GET /material_types.json
  def index
    @material_types = MaterialType.all
  end

  # GET /material_types/1
  # GET /material_types/1.json
  def show
  end

  # GET /material_types/new
  def new
    @material_type = MaterialType.new
  end

  # GET /material_types/1/edit
  def edit
  end

  # POST /material_types
  # POST /material_types.json
  def create
    @material_type = current_user.material_types.build(material_type_params)

    respond_to do |format|
      if @material_type.save
        @material_types = MaterialType.all
        format.html { redirect_to @material_type, notice: 'Material type was successfully created.' }
        format.json { render :show, status: :created, location: @material_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @material_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /material_types/1
  # PATCH/PUT /material_types/1.json
  def update
    respond_to do |format|
      if @material_type.update(material_type_params)
        @material_types = MaterialType.all
        format.html { redirect_to @material_type, notice: 'Material type was successfully updated.' }
        format.json { render :show, status: :ok, location: @material_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @material_type.errors, status: :unprocessable_entity }
      end
    end
  end


  def delete
    @material_type = MaterialType.find(params[:material_type_id])
  end


  # DELETE /material_types/1
  # DELETE /material_types/1.json
  def destroy
    @material_type.destroy
    respond_to do |format|
      format.html { redirect_to material_types_url, notice: 'Material type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_material_type
      @material_type = MaterialType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def material_type_params
      params.require(:material_type).permit(:name, :description)
    end
end
