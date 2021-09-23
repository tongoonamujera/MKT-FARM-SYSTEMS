class SetSeasonsController < ApplicationController
  before_action :set_set_season, only: %i[ show edit update destroy ]

  # GET /set_seasons or /set_seasons.json
  def index
    @set_seasons = SetSeason.inactive_season
    @active_season = SetSeason.active_season
  end

  # GET /set_seasons/1 or /set_seasons/1.json
  def show
  end

  # GET /set_seasons/new
  def new
    @set_season = SetSeason.new
  end

  # GET /set_seasons/1/edit
  def edit
  end

  # POST /set_seasons or /set_seasons.json
  def create
    @set_season = SetSeason.new(set_season_params)

    respond_to do |format|
      if @set_season.save
        format.html { redirect_to @set_season, notice: "Set season was successfully created." }
        format.json { render :show, status: :created, location: @set_season }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @set_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /set_seasons/1 or /set_seasons/1.json
  def update
    respond_to do |format|
      if @set_season.update(set_season_params)
        format.html { redirect_to @set_season, notice: "Set season was successfully updated." }
        format.json { render :show, status: :ok, location: @set_season }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @set_season.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /set_seasons/1 or /set_seasons/1.json
  def destroy
    @set_season.destroy
    respond_to do |format|
      format.html { redirect_to set_seasons_url, notice: "Set season was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def activate_season
    @set_season = SetSeason.find(params[:id])
    @set_season.activate_s
    redirect_to set_seasons_url
  end

  def deactivate_season
    @set_season = SetSeason.find(params[:id])
    @set_season.deactivate_s
    redirect_to set_seasons_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_set_season
      @set_season = SetSeason.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def set_season_params
      params.require(:set_season).permit(:date_from, :date_to, :is_active, :season, :user_id)
    end
end
