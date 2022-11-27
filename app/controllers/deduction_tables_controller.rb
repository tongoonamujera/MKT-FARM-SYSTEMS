class DeductionTablesController < ApplicationController
  before_action :set_deduction_table, only: %i[ show edit update destroy ]

  # GET /deduction_tables or /deduction_tables.json
  def index
    @deduction_tables = DeductionTable.all
    @deduction_table = DeductionTable.new
    render json: {
      tables: @deduction_tables
    }
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
        format.html { redirect_to deduction_tables_url, notice: "Deduction table was successfully created." }
        format.json { render :index, status: :created, location: deduction_tables_url }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @deduction_table.errors, status: :unprocessable_entity }
      end
    end
  end

  def create_deductions
    todo = DeductionTable.create!(
      company_name: params['companyName'],
      season: params['season'],
      month: params['month'],
      employee_name: params['employeeName'],
      employee_number: params["employeeNumber"],
      farm_name: params['farmName'],
      allowance: params['allowance'],
      payee: params['payee'],
      nssa: params['nssa'],
      nec: params['nec'],
      cash_requests: params['cashRequests'],
      other1_name: params['other1Name'],
      other1_amount: params['other1Amount'],
      other2_name: params['other2Name'],
      other2_amount: params['other2Amount'],
      other3_name: params['other3Name'],
      other3_amount: params['other3Amount'],
      other4_name: params["other4Name"],
      other4_amount: params["other4Amount"],
      other5_name: params["other5Name"],
      other5_amount: params["other5Amount"],
      other6_name: params["other6Name"],
      other6_amount: params["other6Amount"],
      other7_name: params["other7Name"],
      other7_amount: params["other7Amount"],
      other8_name: params["other8Name"],
      other8_amount: params["other8Amount"],
      other9_name: params["other9Name"],
      other9_amount: params["other9Amount"],
      other10_name: params['other10Name'],
      other10_amount: params['other10Amount'],
      month_starting: params["monthStarting"],
      month_ending: params["monthEnding"],
      total_amount: params["totalAmount"],
    )

    if todo
      render json: {status: :created, data: DeductionTable.all}
    else
      render json: {status: 501}
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

    render json: {tables: DeductionTable.all}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deduction_table
      @deduction_table = DeductionTable.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def deduction_table_params
      params.require(:deduction_table).permit(:company_name,:season, :month, :employee_name, :employee_number, :farm_name, :allowance, :payee, :nssa, :nec, :cash_requests, :other1_name, :other1_amount, :other2_name, :other2_amount, :other3_name, :other3_amount, :other4_name, :other4_amount, :other5_name, :other5_amount, :other6_name, :other6_amount, :other7_name, :other7_amount, :other8_name, :other8_amount, :other9_name, :other9_amount, :other10_name, :other10_amount, :month_starting, :month_ending, :total_amount)
    end
end
