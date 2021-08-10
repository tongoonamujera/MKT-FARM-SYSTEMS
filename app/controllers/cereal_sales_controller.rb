class CerealSalesController < ApplicationController
  before_action :set_cereal_sale, only: %i[ show edit update destroy ]

  # GET /cereal_sales or /cereal_sales.json
  def index
    @cereal_sales = CerealSale.all
  end

  # GET /cereal_sales/1 or /cereal_sales/1.json
  def show
  end

  # GET /cereal_sales/new
  def new
    @cereal_sale = CerealSale.new
  end

  # GET /cereal_sales/1/edit
  def edit
  end

  # POST /cereal_sales or /cereal_sales.json
  def create
    @cereal_sale = CerealSale.new(cereal_sale_params)

    respond_to do |format|
      if @cereal_sale.save
        format.html { redirect_to @cereal_sale, notice: "Cereal sale was successfully created." }
        format.json { render :show, status: :created, location: @cereal_sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cereal_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cereal_sales/1 or /cereal_sales/1.json
  def update
    respond_to do |format|
      if @cereal_sale.update(cereal_sale_params)
        format.html { redirect_to @cereal_sale, notice: "Cereal sale was successfully updated." }
        format.json { render :show, status: :ok, location: @cereal_sale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cereal_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cereal_sales/1 or /cereal_sales/1.json
  def destroy
    @cereal_sale.destroy
    respond_to do |format|
      format.html { redirect_to cereal_sales_url, notice: "Cereal sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cereal_sale
      @cereal_sale = CerealSale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cereal_sale_params
      params.require(:cereal_sale).permit(:Company_Name, :Date, :Season, :Farm_Name, :Grower_Name, :Truck_Number, :Trailer_Number, :Test_Density, :External_Matter, :Gross_Mass, :Tare, :Net_Mass, :Price_Per_Tonne, :Quantity, :Amount_Paid, :Pro_Number, :user_id)
    end
end
