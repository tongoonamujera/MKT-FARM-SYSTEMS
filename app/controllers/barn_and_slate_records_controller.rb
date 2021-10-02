class BarnAndSlateRecordsController < ApplicationController
  before_action :set_barn_and_slate_record, only: %i[ show edit update destroy ]

  # GET /barn_and_slate_records or /barn_and_slate_records.json
  def index
    @barn_and_slate_records = BarnAndSlateRecord.all
  end

  # GET /barn_and_slate_records/1 or /barn_and_slate_records/1.json
  def show
  end

  # GET /barn_and_slate_records/new
  def new
    @barn_and_slate_record = BarnAndSlateRecord.new
  end

  # GET /barn_and_slate_records/1/edit
  def edit
  end

  # POST /barn_and_slate_records or /barn_and_slate_records.json
  def create
    @barn_and_slate_record = BarnAndSlateRecord.new(barn_and_slate_record_params)

    respond_to do |format|
      if @barn_and_slate_record.save
        format.html { redirect_to @barn_and_slate_record, notice: "Barn and slate record was successfully created." }
        format.json { render :show, status: :created, location: @barn_and_slate_record }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @barn_and_slate_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /barn_and_slate_records/1 or /barn_and_slate_records/1.json
  def update
    respond_to do |format|
      if @barn_and_slate_record.update(barn_and_slate_record_params)
        format.html { redirect_to @barn_and_slate_record, notice: "Barn and slate record was successfully updated." }
        format.json { render :show, status: :ok, location: @barn_and_slate_record }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @barn_and_slate_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /barn_and_slate_records/1 or /barn_and_slate_records/1.json
  def destroy
    @barn_and_slate_record.destroy
    respond_to do |format|
      format.html { redirect_to barn_and_slate_records_url, notice: "Barn and slate record was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_barn_and_slate_record
      @barn_and_slate_record = BarnAndSlateRecord.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def barn_and_slate_record_params
      params.require(:barn_and_slate_record).permit(:company_name, :date, :season, :farm_name, :p_barn_number, :reap, :p_slate_number, :slate_weight, :barn_weight, :cumulative_barn_weight, :user_id)
    end
end
