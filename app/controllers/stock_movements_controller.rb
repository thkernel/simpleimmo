class StockMovementsController < ApplicationController
  before_action :set_stock_movement, only: [:show, :edit, :update, :destroy]
  layout 'dashboard'
  # GET /stock_movements
  # GET /stock_movements.json
  def index
    @stock_movements = StockMovement.all
  end

  # GET /stock_movements/1
  # GET /stock_movements/1.json
  def show
  end

  # GET /stock_movements/new
  def new
    @stock_movement = StockMovement.new
    @product_categories = ProductCategory.all
    @products = Product.all
    @movement_types = MovementType.all
    @unities = Unity.all
  end

  # GET /stock_movements/1/edit
  def edit
    @product_categories = ProductCategory.all
    @products = Product.all
    @movement_types = MovementType.all
    @unities = Unity.all
  end

  # POST /stock_movements
  # POST /stock_movements.json
  def create
    @stock_movement = current_user.stock_movements.build(stock_movement_params)

    respond_to do |format|
      if @stock_movement.save
        @stock_movements = StockMovement.all

        format.html { redirect_to @stock_movement, notice: 'Stock movement was successfully created.' }
        format.json { render :show, status: :created, location: @stock_movement }
        format.js
      else
        format.html { render :new }
        format.json { render json: @stock_movement.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end

  # PATCH/PUT /stock_movements/1
  # PATCH/PUT /stock_movements/1.json
  def update
    respond_to do |format|
      if @stock_movement.update(stock_movement_params)
        @stock_movements = StockMovement.all
        format.html { redirect_to @stock_movement, notice: 'Stock movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_movement }
        format.js
      else
        format.html { render :edit }
        format.json { render json: @stock_movement.errors, status: :unprocessable_entity }
        format.js
      end
    end
  end


  def delete
    @stock_movement = StockMovement.find(params[:stock_movement_id])
  end

  # DELETE /stock_movements/1
  # DELETE /stock_movements/1.json
  def destroy
    @stock_movement.destroy
    @stock_movements = StockMovement.all

    respond_to do |format|
      format.html { redirect_to stock_movements_url, notice: 'Stock movement was successfully destroyed.' }
      format.json { head :no_content }
      format.js
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_movement
      @stock_movement = StockMovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_movement_params
      params.require(:stock_movement).permit(:reference, :product_category_id, :product_id, :unity_id, :movement_type_id, :quantity, :observations)
    end
end
