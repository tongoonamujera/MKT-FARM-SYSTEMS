class SeedbedsController < ApplicationController
  before_action :set_seedbed, only: %i[ show edit update destroy ]

  # GET /seedbeds or /seedbeds.json
  def index
    @seedbeds = Seedbed.all
  end

  # GET /seedbeds/1 or /seedbeds/1.json
  def show
  end

  # GET /seedbeds/new
  def new
    @seedbed = Seedbed.new
  end

  # GET /seedbeds/1/edit
  def edit
  end

  # POST /seedbeds or /seedbeds.json
  def create
    @seedbed = Seedbed.new(seedbed_params)

    respond_to do |format|
      if @seedbed.save
        format.html { redirect_to @seedbed, notice: "Seedbed was successfully created." }
        format.json { render :show, status: :created, location: @seedbed }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @seedbed.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seedbeds/1 or /seedbeds/1.json
  def update
    respond_to do |format|
      if @seedbed.update(seedbed_params)
        format.html { redirect_to @seedbed, notice: "Seedbed was successfully updated." }
        format.json { render :show, status: :ok, location: @seedbed }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @seedbed.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seedbeds/1 or /seedbeds/1.json
  def destroy
    @seedbed.destroy
    respond_to do |format|
      format.html { redirect_to seedbeds_url, notice: "Seedbed was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seedbed
      @seedbed = Seedbed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def seedbed_params
      params.require(:seedbed).permit(:company_name, :date, :season, :farm_name, :section, :item_used, :quantity, :unit, :input_amount, :labour_amount, :user_id)
    end
end
