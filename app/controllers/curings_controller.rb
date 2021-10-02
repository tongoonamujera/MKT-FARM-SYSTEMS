class CuringsController < ApplicationController
  before_action :set_curing, only: %i[ show edit update destroy ]

  # GET /curings or /curings.json
  def index
    @curings = Curing.all
  end

  # GET /curings/1 or /curings/1.json
  def show
  end

  # GET /curings/new
  def new
    @curing = Curing.new
  end

  # GET /curings/1/edit
  def edit
  end

  # POST /curings or /curings.json
  def create
    @curing = Curing.new(curing_params)

    respond_to do |format|
      if @curing.save
        format.html { redirect_to @curing, notice: "Curing was successfully created." }
        format.json { render :show, status: :created, location: @curing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @curing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /curings/1 or /curings/1.json
  def update
    respond_to do |format|
      if @curing.update(curing_params)
        format.html { redirect_to @curing, notice: "Curing was successfully updated." }
        format.json { render :show, status: :ok, location: @curing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @curing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /curings/1 or /curings/1.json
  def destroy
    @curing.destroy
    respond_to do |format|
      format.html { redirect_to curings_url, notice: "Curing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_curing
      @curing = Curing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def curing_params
      params.require(:curing).permit(:company_name, :date, :season, :farm_name, :facility, :time, :day, :temperature, :user_id)
    end
end
