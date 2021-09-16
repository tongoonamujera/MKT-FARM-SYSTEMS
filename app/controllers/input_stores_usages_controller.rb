class InputStoresUsagesController < ApplicationController
  before_action :set_input_stores_usage, only: %i[ show edit update destroy ]

  # GET /input_stores_usages or /input_stores_usages.json
  def index
    @input_stores_usages = InputStoresUsage.all
  end

  # GET /input_stores_usages/1 or /input_stores_usages/1.json
  def show
  end

  # GET /input_stores_usages/new
  def new
    @input_stores_usage = InputStoresUsage.new
  end

  # GET /input_stores_usages/1/edit
  def edit
  end

  # POST /input_stores_usages or /input_stores_usages.json
  def create
    @input_stores_usage = InputStoresUsage.new(input_stores_usage_params)

    respond_to do |format|
      if @input_stores_usage.save
        format.html { redirect_to @input_stores_usage, notice: "Input stores usage was successfully created." }
        format.json { render :show, status: :created, location: @input_stores_usage }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @input_stores_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /input_stores_usages/1 or /input_stores_usages/1.json
  def update
    respond_to do |format|
      if @input_stores_usage.update(input_stores_usage_params)
        format.html { redirect_to @input_stores_usage, notice: "Input stores usage was successfully updated." }
        format.json { render :show, status: :ok, location: @input_stores_usage }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @input_stores_usage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /input_stores_usages/1 or /input_stores_usages/1.json
  def destroy
    @input_stores_usage.destroy
    respond_to do |format|
      format.html { redirect_to input_stores_usages_url, notice: "Input stores usage was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_input_stores_usage
      @input_stores_usage = InputStoresUsage.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def input_stores_usage_params
      params.require(:input_stores_usage).permit(:company_name, :season, :date, :farm_name, :input_name, :quantity_used, :unit, :total_amount, :profile_number, :deleted, :user_id)
    end
end
