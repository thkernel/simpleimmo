class StockMovementDetailsController < ApplicationController
  before_action :set_stock_movement_detail, only: [:show, :edit, :update, :destroy]

  # GET /stock_movement_details
  # GET /stock_movement_details.json
  def index
    @stock_movement_details = StockMovementDetail.all
  end

  # GET /stock_movement_details/1
  # GET /stock_movement_details/1.json
  def show
  end

  # GET /stock_movement_details/new
  def new
    @stock_movement_detail = StockMovementDetail.new
  end

  # GET /stock_movement_details/1/edit
  def edit
  end

  # POST /stock_movement_details
  # POST /stock_movement_details.json
  def create
    @stock_movement_detail = StockMovementDetail.new(stock_movement_detail_params)

    respond_to do |format|
      if @stock_movement_detail.save
        format.html { redirect_to @stock_movement_detail, notice: 'Stock movement detail was successfully created.' }
        format.json { render :show, status: :created, location: @stock_movement_detail }
      else
        format.html { render :new }
        format.json { render json: @stock_movement_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_movement_details/1
  # PATCH/PUT /stock_movement_details/1.json
  def update
    respond_to do |format|
      if @stock_movement_detail.update(stock_movement_detail_params)
        format.html { redirect_to @stock_movement_detail, notice: 'Stock movement detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_movement_detail }
      else
        format.html { render :edit }
        format.json { render json: @stock_movement_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_movement_details/1
  # DELETE /stock_movement_details/1.json
  def destroy
    @stock_movement_detail.destroy
    respond_to do |format|
      format.html { redirect_to stock_movement_details_url, notice: 'Stock movement detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_movement_detail
      @stock_movement_detail = StockMovementDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_movement_detail_params
      params.require(:stock_movement_detail).permit(:product_id, :unit_price, :quantity, :amount, :status, :stock_movement_id, :user_id)
    end
end
