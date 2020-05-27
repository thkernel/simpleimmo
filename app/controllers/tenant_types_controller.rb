class TenantTypesController < ApplicationController
  before_action :authenticate_user!

  before_action :set_tenant_type, only: [:show, :edit, :update, :destroy]

  layout "dashboard"

  # GET /tenant_types
  # GET /tenant_types.json
  def index
    @tenant_types = TenantType.all
  end

  # GET /tenant_types/1
  # GET /tenant_types/1.json
  def show
  end

  # GET /tenant_types/new
  def new
    @tenant_type = TenantType.new
  end

  # GET /tenant_types/1/edit
  def edit
  end

  # POST /tenant_types
  # POST /tenant_types.json
  def create
    @tenant_type = current_user.tenant_types.build(tenant_type_params)

    respond_to do |format|
      if @tenant_type.save

        @tenant_types = TenantType.all

        format.html { redirect_to @tenant_type, notice: 'Tenant type was successfully created.' }
        format.json { render :show, status: :created, location: @tenant_type }
        format.js
      else
        format.html { render :new }
        format.json { render json: @tenant_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tenant_types/1
  # PATCH/PUT /tenant_types/1.json
  def update
    respond_to do |format|
      if @tenant_type.update(tenant_type_params)
        @tenant_types = TenantType.all
        format.html { redirect_to @tenant_type, notice: 'Tenant type was successfully updated.' }
        format.json { render :show, status: :ok, location: @tenant_type }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @tenant_type.errors, status: :unprocessable_entity }
      end
    end
  end


  def delete
      @tenant_type = TenantType.find(params[:tenant_type_id])
    end

  # DELETE /tenant_types/1
  # DELETE /tenant_types/1.json
  def destroy
    @tenant_type.destroy
    respond_to do |format|
      format.html { redirect_to tenant_types_url, notice: 'Tenant type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tenant_type
      @tenant_type = TenantType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tenant_type_params
      params.require(:tenant_type).permit(:name, :description)
    end
end
