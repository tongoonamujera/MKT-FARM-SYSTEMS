class CerealStoresController < ApplicationController
  before_action :set_cereal_store, only: %i[ show edit update destroy ]

  # GET /cereal_stores or /cereal_stores.json
  def index
    @cereal_stores = CerealStore.all
  end

  # GET /cereal_stores/1 or /cereal_stores/1.json
  def show
  end

  # GET /cereal_stores/new
  def new
    @cereal_store = CerealStore.new
  end

  # GET /cereal_stores/1/edit
  def edit
  end

  # POST /cereal_stores or /cereal_stores.json
  def create
    @cereal_store = CerealStore.new(cereal_store_params)

    respond_to do |format|
      if @cereal_store.save
        format.html { redirect_to @cereal_store, notice: "Cereal store was successfully created." }
        format.json { render :show, status: :created, location: @cereal_store }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cereal_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cereal_stores/1 or /cereal_stores/1.json
  def update
    respond_to do |format|
      if @cereal_store.update(cereal_store_params)
        format.html { redirect_to @cereal_store, notice: "Cereal store was successfully updated." }
        format.json { render :show, status: :ok, location: @cereal_store }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cereal_store.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cereal_stores/1 or /cereal_stores/1.json
  def destroy
    @cereal_store.destroy
    respond_to do |format|
      format.html { redirect_to cereal_stores_url, notice: "Cereal store was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cereal_store
      @cereal_store = CerealStore.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cereal_store_params
      params.require(:cereal_store).permit(:company_name, :date, :season, :farm_name, :types, :cereal_name, :quantity, :unit, :unit_price, :total_amount, :user_id, :is_bought, :top_up)
    end
end
