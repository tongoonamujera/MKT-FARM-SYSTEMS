class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy ]

  # GET /calenders or /calenders.json
  def index
    @users = User.all
  end

  # GET /calenders/1 or /calenders/1.json
  def show
  end

  # GET /calenders/new
  def new
    @user = User.new
  end

  # GET /calenders/1/edit
  def edit
  end

  # POST /calenders or /calenders.json
  def create
    @user = User.new(calender_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: "Calender was successfully created." }
        format.json { render :show, status: :created, location: @calender }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calenders/1 or /calenders/1.json
  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: "Calender was successfully updated." }
        format.json { render :show, status: :ok, location: @calender }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calenders/1 or /calenders/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "Calender was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:email, :Company_Name, :cellphone, :Address, :Category, :Status, :Pro_Number, :is_farm_owner, :is_admin, :is_manager)
    end
end
