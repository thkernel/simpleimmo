class HandoversController < ApplicationController
  before_action :authenticate_user!
  before_action :set_handover, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  
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
    @properties = Property.unavailable
    @handover = Handover.new
  end

  # GET /handovers/1/edit
  def edit
    @properties = Property.unavailable
  end

  # POST /handovers
  # POST /handovers.json
  def create
    @handover = current_user.handovers.build(handover_params)

    lease = Lease.find_by(property_id: @handover.property_id, status: "enable")

    if lease.present?
      @handover.lease_id = lease.id
    end

    respond_to do |format|
      if @handover.save
        @handovers = Handover.all
        format.html { redirect_to @handover, notice: 'Handover was successfully created.' }
        format.json { render :show, status: :created, location: @handover }
        format.js
      else
        format.html { render :new }
        format.json { render json: @handover.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /handovers/1
  # PATCH/PUT /handovers/1.json
  def update
    respond_to do |format|
      if @handover.update(handover_params)
        @handovers = Handover.all

        format.html { redirect_to @handover, notice: 'Handover was successfully updated.' }
        format.json { render :show, status: :ok, location: @handover }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @handover.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  def delete
    @handover = Handover.find(params[:handover_id])
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
      params.require(:handover).permit(:handover_type, :reference, :property_id,  :doors, :windows, :wall_cover, :flooring, :ventilators, :air_conditioners, :light_bulbs, :faucets, :showers, :doorbell, :ceiling, :electricity, :notes)
    end
end
