class MktPaymentsController < ApplicationController
  before_action :set_mkt_payment, only: %i[ show edit update destroy ]

  # GET /mkt_payments or /mkt_payments.json
  def index
    @mkt_payments = MktPayment.all
  end

  # GET /mkt_payments/1 or /mkt_payments/1.json
  def show
  end

  # GET /mkt_payments/new
  def new
    @mkt_payment = MktPayment.new
  end

  # GET /mkt_payments/1/edit
  def edit
  end

  # POST /mkt_payments or /mkt_payments.json
  def create
    @mkt_payment = MktPayment.new(mkt_payment_params)

    respond_to do |format|
      if @mkt_payment.save
        format.html { redirect_to @mkt_payment, notice: "Mkt payment was successfully created." }
        format.json { render :show, status: :created, location: @mkt_payment }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @mkt_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mkt_payments/1 or /mkt_payments/1.json
  def update
    respond_to do |format|
      if @mkt_payment.update(mkt_payment_params)
        format.html { redirect_to @mkt_payment, notice: "Mkt payment was successfully updated." }
        format.json { render :show, status: :ok, location: @mkt_payment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @mkt_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mkt_payments/1 or /mkt_payments/1.json
  def destroy
    @mkt_payment.destroy
    respond_to do |format|
      format.html { redirect_to mkt_payments_url, notice: "Mkt payment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mkt_payment
      @mkt_payment = MktPayment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def mkt_payment_params
      params.require(:mkt_payment).permit(:date, :company_name, :service_rendered, :service, :amount_paid, :from, :to, :receipt_number, :paid_by)
    end
end
