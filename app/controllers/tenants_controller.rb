class TenantsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tenant, only: [:show, :edit, :update, :destroy]
  layout "dashboard"

  # GET /tenants
  # GET /tenants.json
  def index
    @tenants = Tenant.all
  end

  # GET /tenants/1
  # GET /tenants/1.json
  def show
  end

  # GET /tenants/new
  def new
    @tenant_types = TenantType.all
    @tenant = Tenant.new
  end

  # GET /tenants/1/edit
  def edit
    @tenant_types = TenantType.all
  end

  # POST /tenants
  # POST /tenants.json
  def create
    @tenant = current_user.tenants.build(tenant_params)

    respond_to do |format|
      if @tenant.save

        @tenants = Tenant.all

        format.html { redirect_to @tenant, notice: 'Tenant was successfully created.' }
        format.json { render :show, status: :created, location: @tenant }
        format.js
      else
        format.html { render :new }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenants/1
  # PATCH/PUT /tenants/1.json
  def update
    respond_to do |format|
      if @tenant.update(tenant_params)
        @tenants = Tenant.all
        format.html { redirect_to @tenant, notice: 'Tenant was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenant }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @tenant.errors, status: :unprocessable_entity }
      end
    end
  end


  def delete
      @tenant = Tenant.find(params[:tenant_id])
    end

  # DELETE /tenants/1
  # DELETE /tenants/1.json
  def destroy
    @tenant.destroy
    respond_to do |format|
      format.html { redirect_to tenants_url, notice: 'Tenant was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant
      @tenant = Tenant.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tenant_params
      params.require(:tenant).permit(:tenant_type_id, :civility, :last_name, :first_name, :birth_date, :birth_place, :id_type, :id_number, :id_expiration, :profession, :nationality, :company_name, :address, :phone, :city, :country, :email, :about)
    end
end
