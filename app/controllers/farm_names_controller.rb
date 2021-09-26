class FarmNamesController < ApplicationController
  before_action :set_farm_name, only: %i[ show edit update destroy ]

  # GET /farm_names or /farm_names.json
  def index
    @farm_names = FarmName.all
  end

  # GET /farm_names/1 or /farm_names/1.json
  def show
  end

  # GET /farm_names/new
  def new
    @farm_name = FarmName.new
  end

  # GET /farm_names/1/edit
  def edit
  end

  # POST /farm_names or /farm_names.json
  def create
    @farm_name = FarmName.new(farm_name_params)

    respond_to do |format|
      if @farm_name.save
        format.html { redirect_to farm_names_path, notice: "Farm name was successfully created." }
        format.json { render :index, status: :created, location: @farm_name }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @farm_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /farm_names/1 or /farm_names/1.json
  def update
    respond_to do |format|
      if @farm_name.update(farm_name_params)
        format.html { redirect_to @farm_name, notice: "Farm name was successfully updated." }
        format.json { render :show, status: :ok, location: @farm_name }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @farm_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /farm_names/1 or /farm_names/1.json
  def destroy
    @farm_name.destroy
    respond_to do |format|
      format.html { redirect_to farm_names_url, notice: "Farm name was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_farm_name
      @farm_name = FarmName.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def farm_name_params
      params.require(:farm_name).permit(:user_farm_name, :user_id)
    end
end
