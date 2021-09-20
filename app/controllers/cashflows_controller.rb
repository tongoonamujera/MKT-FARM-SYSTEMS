class CashflowsController < ApplicationController
  before_action :set_cashflow, only: %i[ show edit update destroy ]

  # GET /cashflows or /cashflows.json
  def index
    @cashflows = Cashflow.all
  end

  # GET /cashflows/1 or /cashflows/1.json
  def show
  end

  # GET /cashflows/new
  def new
    @cashflow = Cashflow.new
  end

  # GET /cashflows/1/edit
  def edit
  end

  # POST /cashflows or /cashflows.json
  def create
    @cashflow = Cashflow.new(cashflow_params)

    respond_to do |format|
      if @cashflow.save
        format.html { redirect_to @cashflow, notice: "Cashflow was successfully created." }
        format.json { render :show, status: :created, location: @cashflow }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cashflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cashflows/1 or /cashflows/1.json
  def update
    respond_to do |format|
      if @cashflow.update(cashflow_params)
        format.html { redirect_to @cashflow, notice: "Cashflow was successfully updated." }
        format.json { render :show, status: :ok, location: @cashflow }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cashflow.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cashflows/1 or /cashflows/1.json
  def destroy
    @cashflow.destroy
    respond_to do |format|
      format.html { redirect_to cashflows_url, notice: "Cashflow was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cashflow
      @cashflow = Cashflow.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cashflow_params
      params.require(:cashflow).permit(:company_name, :date, :season, :month, :grower_name, :hectrage, :operation, :unit_price, :quantity_per_hectre, :unity, :input_name, :total_amount, :pro_number, :user_id, :total_quantity, :tian_ze_number)
    end
end
