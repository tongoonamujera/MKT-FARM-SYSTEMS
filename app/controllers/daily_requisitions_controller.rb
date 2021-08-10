class DailyRequisitionsController < ApplicationController
  before_action :set_daily_requisition, only: %i[ show edit update destroy ]

  # GET /daily_requisitions or /daily_requisitions.json
  def index
    @daily_requisitions = DailyRequisition.all
  end

  # GET /daily_requisitions/1 or /daily_requisitions/1.json
  def show
  end

  # GET /daily_requisitions/new
  def new
    @daily_requisition = DailyRequisition.new
  end

  # GET /daily_requisitions/1/edit
  def edit
  end

  # POST /daily_requisitions or /daily_requisitions.json
  def create
    @daily_requisition = DailyRequisition.new(daily_requisition_params)

    respond_to do |format|
      if @daily_requisition.save
        format.html { redirect_to @daily_requisition, notice: "Daily requisition was successfully created." }
        format.json { render :show, status: :created, location: @daily_requisition }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @daily_requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /daily_requisitions/1 or /daily_requisitions/1.json
  def update
    respond_to do |format|
      if @daily_requisition.update(daily_requisition_params)
        format.html { redirect_to @daily_requisition, notice: "Daily requisition was successfully updated." }
        format.json { render :show, status: :ok, location: @daily_requisition }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @daily_requisition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daily_requisitions/1 or /daily_requisitions/1.json
  def destroy
    @daily_requisition.destroy
    respond_to do |format|
      format.html { redirect_to daily_requisitions_url, notice: "Daily requisition was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_requisition
      @daily_requisition = DailyRequisition.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_requisition_params
      params.require(:daily_requisition).permit(:Company_Name, :Date, :Season, :Farm_Name, :Requisition, :Pro_Number, :user_id)
    end
end
