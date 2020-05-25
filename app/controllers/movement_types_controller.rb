class MovementTypesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_movement_type, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET /movement_types
  # GET /movement_types.json
  def index
    @movement_types = MovementType.all
  end

  # GET /movement_types/1
  # GET /movement_types/1.json
  def show
  end

  # GET /movement_types/new
  def new
    @movement_type = MovementType.new
  end

  # GET /movement_types/1/edit
  def edit
  end

  # POST /movement_types
  # POST /movement_types.json
  def create
    @movement_type = current_user.movement_types.build(movement_type_params)

    respond_to do |format|
      if @movement_type.save
        @movement_types = MovementType.all
        format.html { redirect_to @movement_type, notice: 'Movement type was successfully created.' }
        format.json { render :show, status: :created, location: @movement_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @movement_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /movement_types/1
  # PATCH/PUT /movement_types/1.json
  def update
    respond_to do |format|
      if @movement_type.update(movement_type_params)
        @movement_types = MovementType.all
        format.html { redirect_to @movement_type, notice: 'Movement type was successfully updated.' }
        format.json { render :show, status: :ok, location: @movement_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @movement_type.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  def delete
    @movement_type = MovementType.find(params[:movement_type_id])
  end


  # DELETE /movement_types/1
  # DELETE /movement_types/1.json
  def destroy
    @movement_type.destroy
    @movement_types = MovementType.all
    respond_to do |format|
      format.html { redirect_to movement_types_url, notice: 'Movement type was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movement_type
      @movement_type = MovementType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movement_type_params
      params.require(:movement_type).permit(:name, :description)
    end
end
