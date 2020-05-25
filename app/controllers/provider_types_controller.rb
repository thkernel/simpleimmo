class ProviderTypesController < ApplicationController
  before_action :set_provider_type, only: [:show, :edit, :update, :destroy]

  # GET /provider_types
  # GET /provider_types.json
  def index
    @provider_types = ProviderType.all
  end

  # GET /provider_types/1
  # GET /provider_types/1.json
  def show
  end

  # GET /provider_types/new
  def new
    @provider_type = ProviderType.new
  end

  # GET /provider_types/1/edit
  def edit
  end

  # POST /provider_types
  # POST /provider_types.json
  def create
    @provider_type = ProviderType.new(provider_type_params)

    respond_to do |format|
      if @provider_type.save
        format.html { redirect_to @provider_type, notice: 'Provider type was successfully created.' }
        format.json { render :show, status: :created, location: @provider_type }
      else
        format.html { render :new }
        format.json { render json: @provider_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /provider_types/1
  # PATCH/PUT /provider_types/1.json
  def update
    respond_to do |format|
      if @provider_type.update(provider_type_params)
        format.html { redirect_to @provider_type, notice: 'Provider type was successfully updated.' }
        format.json { render :show, status: :ok, location: @provider_type }
      else
        format.html { render :edit }
        format.json { render json: @provider_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /provider_types/1
  # DELETE /provider_types/1.json
  def destroy
    @provider_type.destroy
    respond_to do |format|
      format.html { redirect_to provider_types_url, notice: 'Provider type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_provider_type
      @provider_type = ProviderType.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def provider_type_params
      params.require(:provider_type).permit(:name, :description, :status, :user_id)
    end
end
