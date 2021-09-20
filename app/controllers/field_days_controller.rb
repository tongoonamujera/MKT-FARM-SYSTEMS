class FieldDaysController < ApplicationController
  before_action :set_field_day, only: %i[ show edit update destroy ]

  # GET /field_days or /field_days.json
  def index
    @field_days = FieldDay.all
  end

  # GET /field_days/1 or /field_days/1.json
  def show
  end

  # GET /field_days/new
  def new
    @field_day = FieldDay.new
  end

  # GET /field_days/1/edit
  def edit
  end

  # POST /field_days or /field_days.json
  def create
    @field_day = FieldDay.new(field_day_params)

    respond_to do |format|
      if @field_day.save
        format.html { redirect_to @field_day, notice: "Field day was successfully created." }
        format.json { render :show, status: :created, location: @field_day }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @field_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /field_days/1 or /field_days/1.json
  def update
    respond_to do |format|
      if @field_day.update(field_day_params)
        format.html { redirect_to @field_day, notice: "Field day was successfully updated." }
        format.json { render :show, status: :ok, location: @field_day }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @field_day.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /field_days/1 or /field_days/1.json
  def destroy
    @field_day.destroy
    respond_to do |format|
      format.html { redirect_to field_days_url, notice: "Field day was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_field_day
      @field_day = FieldDay.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def field_day_params
      params.require(:field_day).permit(:company_name, :date, :season, :place, :start_time, :focus)
    end
end
