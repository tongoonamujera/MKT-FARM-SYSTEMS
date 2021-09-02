class TimebooksController < ApplicationController
  before_action :set_timebook, only: %i[ show edit update destroy ]

  # GET /timebooks or /timebooks.json
  def index
    @timebooks = Timebook.all
  end

  # GET /timebooks/1 or /timebooks/1.json
  def show
  end

  # GET /timebooks/new
  def new
    @timebook = Timebook.new
  end

  # GET /timebooks/1/edit
  def edit
  end

  # POST /timebooks or /timebooks.json
  def create
    @timebook = Timebook.new(timebook_params)

    respond_to do |format|
      if @timebook.save
        format.html { redirect_to @timebook, notice: "Timebook was successfully created." }
        format.json { render :show, status: :created, location: @timebook }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @timebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /timebooks/1 or /timebooks/1.json
  def update
    respond_to do |format|
      if @timebook.update(timebook_params)
        format.html { redirect_to @timebook, notice: "Timebook was successfully updated." }
        format.json { render :show, status: :ok, location: @timebook }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @timebook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /timebooks/1 or /timebooks/1.json
  def destroy
    @timebook.destroy
    respond_to do |format|
      format.html { redirect_to timebooks_url, notice: "Timebook was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_timebook
      @timebook = Timebook.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def timebook_params
      params.require(:timebook).permit(:date, :employee_name, :employee_number, :rate, :day, :gross, :user_id, :season)
    end
end
