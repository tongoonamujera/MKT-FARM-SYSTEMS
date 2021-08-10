class EquipmentServicesController < ApplicationController
  before_action :set_equipment_service, only: %i[ show edit update destroy ]

  # GET /equipment_services or /equipment_services.json
  def index
    @equipment_services = EquipmentService.all
  end

  # GET /equipment_services/1 or /equipment_services/1.json
  def show
  end

  # GET /equipment_services/new
  def new
    @equipment_service = EquipmentService.new
  end

  # GET /equipment_services/1/edit
  def edit
  end

  # POST /equipment_services or /equipment_services.json
  def create
    @equipment_service = EquipmentService.new(equipment_service_params)

    respond_to do |format|
      if @equipment_service.save
        format.html { redirect_to @equipment_service, notice: "Equipment service was successfully created." }
        format.json { render :show, status: :created, location: @equipment_service }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @equipment_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipment_services/1 or /equipment_services/1.json
  def update
    respond_to do |format|
      if @equipment_service.update(equipment_service_params)
        format.html { redirect_to @equipment_service, notice: "Equipment service was successfully updated." }
        format.json { render :show, status: :ok, location: @equipment_service }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @equipment_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipment_services/1 or /equipment_services/1.json
  def destroy
    @equipment_service.destroy
    respond_to do |format|
      format.html { redirect_to equipment_services_url, notice: "Equipment service was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipment_service
      @equipment_service = EquipmentService.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def equipment_service_params
      params.require(:equipment_service).permit(:Company_Name, :Date, :Season, :Type, :Equipment_Number, :Service_Type, :Done_By, :Mileage, :next_service-milaege, :Job, :Total_Amount, :Pro_Number, :user_id)
    end
end
