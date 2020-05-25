class HandoversController < ApplicationController
  before_action :set_handover, only: [:show, :edit, :update, :destroy]

  # GET /handovers
  # GET /handovers.json
  def index
    @handovers = Handover.all
  end

  # GET /handovers/1
  # GET /handovers/1.json
  def show
  end

  # GET /handovers/new
  def new
    @handover = Handover.new
  end

  # GET /handovers/1/edit
  def edit
  end

  # POST /handovers
  # POST /handovers.json
  def create
    @handover = Handover.new(handover_params)

    respond_to do |format|
      if @handover.save
        format.html { redirect_to @handover, notice: 'Handover was successfully created.' }
        format.json { render :show, status: :created, location: @handover }
      else
        format.html { render :new }
        format.json { render json: @handover.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /handovers/1
  # PATCH/PUT /handovers/1.json
  def update
    respond_to do |format|
      if @handover.update(handover_params)
        format.html { redirect_to @handover, notice: 'Handover was successfully updated.' }
        format.json { render :show, status: :ok, location: @handover }
      else
        format.html { render :edit }
        format.json { render json: @handover.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /handovers/1
  # DELETE /handovers/1.json
  def destroy
    @handover.destroy
    respond_to do |format|
      format.html { redirect_to handovers_url, notice: 'Handover was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_handover
      @handover = Handover.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def handover_params
      params.require(:handover).permit(:type, :reference, :lease_id, :doors, :windows, :wall_cover, :flooring, :ventilators, :air_conditioners, :light_bulbs, :faucets, :showers, :doorbell, :ceiling, :electricity, :notes, :user_id)
    end
end
