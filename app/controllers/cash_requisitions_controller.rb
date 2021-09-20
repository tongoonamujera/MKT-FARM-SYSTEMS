class CashRequisitionsController < ApplicationController
  before_action :set_cash_requisition, only: %i[ show edit update destroy ]

  # GET /cash_requisitions or /cash_requisitions.json
  def index
    @cash_requisitions = CashRequisition.all
  end

  # GET /cash_requisitions/1 or /cash_requisitions/1.json
  def show
  end

  # GET /cash_requisitions/new
  def new
    @cash_requisition = CashRequisition.new
  end

  # GET /cash_requisitions/1/edit
  def edit
  end

  # POST /cash_requisitions or /cash_requisitions.json
  def create
    @cash_requisition = CashRequisition.new(cash_requisition_params)

    respond_to do |format|
      if @cash_requisition.save
        format.html { redirect_to @cash_requisition, notice: "Cash requisition was successfully created." }
        format.json { render :show, status: :created, location: @cash_requisition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cash_requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cash_requisitions/1 or /cash_requisitions/1.json
  def update
    respond_to do |format|
      if @cash_requisition.update(cash_requisition_params)
        format.html { redirect_to @cash_requisition, notice: "Cash requisition was successfully updated." }
        format.json { render :show, status: :ok, location: @cash_requisition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cash_requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cash_requisitions/1 or /cash_requisitions/1.json
  def destroy
    @cash_requisition.destroy
    respond_to do |format|
      format.html { redirect_to cash_requisitions_url, notice: "Cash requisition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cash_requisition
      @cash_requisition = CashRequisition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cash_requisition_params
      params.require(:cash_requisition).permit(:company_name, :date, :season, :farm_name, :employee_name, :amount_requested, :amount_issued, :pay_from, :pay_to, :pro_number, :user_id)
    end
end
