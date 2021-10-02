class IrriagtionSchedulesController < ApplicationController
  before_action :set_irriagtion_schedule, only: %i[ show edit update destroy ]

  # GET /irriagtion_schedules or /irriagtion_schedules.json
  def index
    @irriagtion_schedules = IrriagtionSchedule.all
  end

  # GET /irriagtion_schedules/1 or /irriagtion_schedules/1.json
  def show
  end

  # GET /irriagtion_schedules/new
  def new
    @irriagtion_schedule = IrriagtionSchedule.new
  end

  # GET /irriagtion_schedules/1/edit
  def edit
  end

  # POST /irriagtion_schedules or /irriagtion_schedules.json
  def create
    @irriagtion_schedule = IrriagtionSchedule.new(irriagtion_schedule_params)

    respond_to do |format|
      if @irriagtion_schedule.save
        format.html { redirect_to @irriagtion_schedule, notice: "Irriagtion schedule was successfully created." }
        format.json { render :show, status: :created, location: @irriagtion_schedule }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @irriagtion_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /irriagtion_schedules/1 or /irriagtion_schedules/1.json
  def update
    respond_to do |format|
      if @irriagtion_schedule.update(irriagtion_schedule_params)
        format.html { redirect_to @irriagtion_schedule, notice: "Irriagtion schedule was successfully updated." }
        format.json { render :show, status: :ok, location: @irriagtion_schedule }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @irriagtion_schedule.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /irriagtion_schedules/1 or /irriagtion_schedules/1.json
  def destroy
    @irriagtion_schedule.destroy
    respond_to do |format|
      format.html { redirect_to irriagtion_schedules_url, notice: "Irriagtion schedule was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_irriagtion_schedule
      @irriagtion_schedule = IrriagtionSchedule.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def irriagtion_schedule_params
      params.require(:irriagtion_schedule).permit(:company_name, :date, :season, :farm_name, :section, :crop, :calibration, :mls, :start_date, :end_date, :turn_around_time, :user_id)
    end
end
