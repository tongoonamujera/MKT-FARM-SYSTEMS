class InputCalibrationsController < ApplicationController
  before_action :set_input_calibration, only: %i[ show edit update destroy ]

  # GET /input_calibrations or /input_calibrations.json
  def index
    @input_calibrations = InputCalibration.all
  end

  # GET /input_calibrations/1 or /input_calibrations/1.json
  def show
  end

  # GET /input_calibrations/new
  def new
    @input_calibration = InputCalibration.new
  end

  # GET /input_calibrations/1/edit
  def edit
  end

  # POST /input_calibrations or /input_calibrations.json
  def create
    @input_calibration = InputCalibration.new(input_calibration_params)

    respond_to do |format|
      if @input_calibration.save
        format.html { redirect_to @input_calibration, notice: "Input calibration was successfully created." }
        format.json { render :show, status: :created, location: @input_calibration }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @input_calibration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /input_calibrations/1 or /input_calibrations/1.json
  def update
    respond_to do |format|
      if @input_calibration.update(input_calibration_params)
        format.html { redirect_to @input_calibration, notice: "Input calibration was successfully updated." }
        format.json { render :show, status: :ok, location: @input_calibration }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @input_calibration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /input_calibrations/1 or /input_calibrations/1.json
  def destroy
    @input_calibration.destroy
    respond_to do |format|
      format.html { redirect_to input_calibrations_url, notice: "Input calibration was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_input_calibration
      @input_calibration = InputCalibration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def input_calibration_params
      params.require(:input_calibration).permit(:company_name, :date, :season, :farm_name, :section, :crop, :variety, :fertiliser_type, :fertiliser_rate, :bags_used, :herbicide, :herbicide_rate, :pro_number, :user_id)
    end
end
