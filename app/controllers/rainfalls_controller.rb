class RainfallsController < ApplicationController
  before_action :set_rainfall, only: %i[ show edit update destroy ]

  # GET /rainfalls or /rainfalls.json
  def index
    @rainfalls = Rainfall.all
    @rainfall = Rainfall.new
  end

  # GET /rainfalls/1 or /rainfalls/1.json
  def show
  end

  # GET /rainfalls/new
  def new
    @rainfall = Rainfall.new
  end

  # GET /rainfalls/1/edit
  def edit
  end

  # POST /rainfalls or /rainfalls.json
  def create
    @rainfall = Rainfall.new(rainfall_params)

    respond_to do |format|
      if @rainfall.save
        format.html { redirect_to @rainfall, notice: "Rainfall was successfully created." }
        format.json { render :show, status: :created, location: @rainfall }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rainfall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rainfalls/1 or /rainfalls/1.json
  def update
    respond_to do |format|
      if @rainfall.update(rainfall_params)
        format.html { redirect_to @rainfall, notice: "Rainfall was successfully updated." }
        format.json { render :show, status: :ok, location: @rainfall }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rainfall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rainfalls/1 or /rainfalls/1.json
  def destroy
    @rainfall.destroy
    respond_to do |format|
      format.html { redirect_to rainfalls_url, notice: "Rainfall was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rainfall
      @rainfall = Rainfall.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rainfall_params
      params.require(:rainfall).permit(:company_name, :date, :season, :farm_name, :section, :mls_received, :user_id)
    end
end
