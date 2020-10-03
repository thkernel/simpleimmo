class LeasesController < ApplicationController

  include FilterConcern
  
  before_action :authenticate_user!
  before_action :set_lease, only: [:show, :edit, :update, :destroy]
  layout "dashboard"


  # GET /leases
  # GET /leases.json
  def index
    @leases = Lease.all
  end

  # GET /leases/1
  # GET /leases/1.json
  def show
  end

  
  
  # GET /leases/new
  def new
    @tenants = Tenant.all
    @buildings = Building.all
    @property_types = PropertyType.all
    @properties = Property.available
    @taxes = Tax.all
    @lease = Lease.new
  end

  # GET /leases/1/edit
  def edit
    @tenants = Tenant.all
    @buildings = Building.all
    @properties = Property.all
    #@properties = Property.available
    @property_types = PropertyType.all
    @taxes = Tax.all
  end

  # POST /leases
  # POST /leases.json
  def create
    @lease = current_user.leases.build(lease_params)
    property = Property.find(@lease.property_id)
    property.update_column(:status, "unavailable")

    respond_to do |format|
      if @lease.save
        @leases = Lease.all

        format.html { redirect_to @lease, notice: 'Lease was successfully created.' }
        format.json { render :show, status: :created, location: @lease }
        format.js
      else
        format.html { render :new }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /leases/1
  # PATCH/PUT /leases/1.json
  def update
    respond_to do |format|
      if @lease.update(lease_params)
        @leases = Lease.all
        format.html { redirect_to @lease, notice: 'Lease was successfully updated.' }
        format.json { render :show, status: :ok, location: @lease }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @lease.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  def delete
    @lease = Lease.find(params[:lease_id])
  end

  # DELETE /leases/1
  # DELETE /leases/1.json
  def destroy
    @lease.destroy
    property = Property.find_by(property_id: @lease.property_id)

    property.update_column(:status, "available") if property.present?

    respond_to do |format|
      format.html { redirect_to leases_url, notice: 'Lease was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lease
      @lease = Lease.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lease_params
      params.require(:lease).permit( :tenant_id, :building_id, :property_id, :usage_type, :start_date, :end_date, :effective_date, :duration, :id_type, :id_number, :periodicity, :payment_method, :payment_date, :receipt_date, :rent_excluding_tax, :vat_rate, :net_amount, :vat_paid_by_tenant, :guarantee_amount, :avance, :renewable, :notes)
    end
end
