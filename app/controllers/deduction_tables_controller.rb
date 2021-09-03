class DeductionTablesController < ApplicationController
  before_action :set_deduction_table, only: %i[ show edit update destroy ]

  # GET /deduction_tables or /deduction_tables.json
  def index
    @deduction_tables = DeductionTable.all
  end

  # GET /deduction_tables/1 or /deduction_tables/1.json
  def show
  end

  # GET /deduction_tables/new
  def new
    @deduction_table = DeductionTable.new
  end

  # GET /deduction_tables/1/edit
  def edit
  end

  # POST /deduction_tables or /deduction_tables.json
  def create
    @deduction_table = DeductionTable.new(deduction_table_params)

    respond_to do |format|
      if @deduction_table.save
        format.html { redirect_to @deduction_table, notice: "Deduction table was successfully created." }
        format.json { render :show, status: :created, location: @deduction_table }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deduction_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deduction_tables/1 or /deduction_tables/1.json
  def update
    respond_to do |format|
      if @deduction_table.update(deduction_table_params)
        format.html { redirect_to @deduction_table, notice: "Deduction table was successfully updated." }
        format.json { render :show, status: :ok, location: @deduction_table }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @deduction_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deduction_tables/1 or /deduction_tables/1.json
  def destroy
    @deduction_table.destroy
    respond_to do |format|
      format.html { redirect_to deduction_tables_url, notice: "Deduction table was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deduction_table
      @deduction_table = DeductionTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deduction_table_params
      params.require(:deduction_table).permit(:Season, :Month, :employee_name, :employee_number, :Farm_Name, :allowance, :payee, :nssa, :nec, :cash_requests, :other1_name, :other1_amount, :other2_name, :other2_amount, :other3_name, :other3_amount, :other4_name, :other4_amount, :other5_name, :other5_amount, :other6_name, :other6_amount, :other7_name, :other7_amount, :other8_name, :other8_amount, :other9_name, :other9_amount, :other10_name, :other10_amount)
    end
end
