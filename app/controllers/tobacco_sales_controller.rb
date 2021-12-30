class TobaccoSalesController < ApplicationController
  include ApplicationHelper
  before_action :set_tobacco_sale, only: %i[ show edit update destroy ]

  # GET /tobacco_sales or /tobacco_sales.json
  def index
    @tobacco_sales = is_current_users
  end

  # GET /tobacco_sales/1 or /tobacco_sales/1.json
  def show
  end

  # GET /tobacco_sales/new
  def new
    @tobacco_sale = TobaccoSale.new
  end

  # GET /tobacco_sales/1/edit
  def edit
  end

  # POST /tobacco_sales or /tobacco_sales.json
  def create
    @tobacco_sale = TobaccoSale.new(tobacco_sale_params)

    respond_to do |format|
      if @tobacco_sale.save
        format.html { redirect_to @tobacco_sale, notice: "Tobacco sale was successfully created." }
        format.json { render :show, status: :created, location: @tobacco_sale }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tobacco_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tobacco_sales/1 or /tobacco_sales/1.json
  def update
    respond_to do |format|
      if @tobacco_sale.update(tobacco_sale_params)
        format.html { redirect_to @tobacco_sale, notice: "Tobacco sale was successfully updated." }
        format.json { render :show, status: :ok, location: @tobacco_sale }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tobacco_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tobacco_sales/1 or /tobacco_sales/1.json
  def destroy
    @tobacco_sale.destroy
    respond_to do |format|
      format.html { redirect_to tobacco_sales_url, notice: "Tobacco sale was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def is_current_users
      admin_users ? TobaccoSale.all.order(:company_name) : TobaccoSale.where("company_name =?", is_current_user)
    end

    def set_tobacco_sale
      @tobacco_sale = TobaccoSale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tobacco_sale_params
      params.require(:tobacco_sale).permit(:season, :date, :grower_number, :section, :sale_number, :bales_sold, :mass, :collect_bales, :average_price, :weighing_and_auction, :afforestration, :levy, :stop_oder_commission, :insurance_name, :insurance_amount, :bank_name, :bank_amount, :tianZe, :balance, :transporter_name, :transporter_amount, :other_1_name, :other_1_amount, :other_2_name, :other_2_amount, :gross_realisation, :net_realistion, :user_id, :company_name, :usd_payments, :zw_payments)
    end
end
