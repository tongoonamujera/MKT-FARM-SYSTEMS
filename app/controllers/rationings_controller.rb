class RationingsController < ApplicationController
  before_action :set_rationing, only: %i[ show edit update destroy ]

  # GET /rationings or /rationings.json
  def index
    @rationings = Rationing.all
  end

  # GET /rationings/1 or /rationings/1.json
  def show
  end

  # GET /rationings/new
  def new
    @rationing = Rationing.new
  end

  # GET /rationings/1/edit
  def edit
  end

  # POST /rationings or /rationings.json
  def create
    @rationing = Rationing.new(rationing_params)

    respond_to do |format|
      if @rationing.save
        format.html { redirect_to @rationing, notice: "Rationing was successfully created." }
        format.json { render :show, status: :created, location: @rationing }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @rationing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rationings/1 or /rationings/1.json
  def update
    respond_to do |format|
      if @rationing.update(rationing_params)
        format.html { redirect_to @rationing, notice: "Rationing was successfully updated." }
        format.json { render :show, status: :ok, location: @rationing }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @rationing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rationings/1 or /rationings/1.json
  def destroy
    @rationing.destroy
    respond_to do |format|
      format.html { redirect_to rationings_url, notice: "Rationing was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rationing
      @rationing = Rationing.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rationing_params
      params.require(:rationing).permit(:company_name, :date, :season, :farm_name, :cereal_name, :kgs_issued, :user_id, :is_sold, :price, :issued_to)
    end
end
