class WagesController < ApplicationController
  before_action :set_wage, only: %i[ show edit update destroy ]

  # GET /wages or /wages.json
  def index
    @wages = Wage.all
  end

  # GET /wages/1 or /wages/1.json
  def show
  end

  # GET /wages/new
  def new
    @wage = Wage.new
  end

  # GET /wages/1/edit
  def edit
  end

  # POST /wages or /wages.json
  def create
    @wage = Wage.new(wage_params)

    respond_to do |format|
      if @wage.save
        format.html { redirect_to @wage, notice: "Wage was successfully created." }
        format.json { render :show, status: :created, location: @wage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @wage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wages/1 or /wages/1.json
  def update
    respond_to do |format|
      if @wage.update(wage_params)
        format.html { redirect_to @wage, notice: "Wage was successfully updated." }
        format.json { render :show, status: :ok, location: @wage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @wage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wages/1 or /wages/1.json
  def destroy
    @wage.destroy
    respond_to do |format|
      format.html { redirect_to wages_url, notice: "Wage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wage
      @wage = Wage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def wage_params
      params.require(:wage).permit(:Company_Name, :daily_rate, :empoyee_number, :Farm_Name, :worker_status, :employee_name, :Pro_Number, :user_id)
    end
end
