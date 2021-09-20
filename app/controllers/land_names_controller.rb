class LandNamesController < ApplicationController
  before_action :set_land_name, only: %i[ show edit update destroy ]

  # GET /land_names or /land_names.json
  def index
    @land_names = LandName.all
  end

  # GET /land_names/1 or /land_names/1.json
  def show
  end

  # GET /land_names/new
  def new
    @land_name = LandName.new
  end

  # GET /land_names/1/edit
  def edit
  end

  # POST /land_names or /land_names.json
  def create
    @land_name = LandName.new(land_name_params)

    respond_to do |format|
      if @land_name.save
        format.html { redirect_to @land_name, notice: "Land name was successfully created." }
        format.json { render :show, status: :created, location: @land_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @land_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /land_names/1 or /land_names/1.json
  def update
    respond_to do |format|
      if @land_name.update(land_name_params)
        format.html { redirect_to @land_name, notice: "Land name was successfully updated." }
        format.json { render :show, status: :ok, location: @land_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @land_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /land_names/1 or /land_names/1.json
  def destroy
    @land_name.destroy
    respond_to do |format|
      format.html { redirect_to land_names_url, notice: "Land name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land_name
      @land_name = LandName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def land_name_params
      params.require(:land_name).permit(:company_name, :date, :season, :farm_name, :hectrage, :crop, :pro_number, :section)
    end
end
