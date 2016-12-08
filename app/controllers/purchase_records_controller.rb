class PurchaseRecordsController < ApplicationController
  before_action :set_purchase_record, only: [:show, :edit, :update, :destroy]

  # GET /purchase_records
  # GET /purchase_records.json
  def index
    @purchase_records = PurchaseRecord.all
  end

  # GET /purchase_records/1
  # GET /purchase_records/1.json
  def show
  end

  # GET /purchase_records/new
  def new
    @purchase_record = PurchaseRecord.new
  end

  # GET /purchase_records/1/edit
  def edit
  end

  # POST /purchase_records
  # POST /purchase_records.json
  def create
    @purchase_record = PurchaseRecord.new(purchase_record_params)

    respond_to do |format|
      if @purchase_record.save
        format.html { redirect_to @purchase_record, notice: 'Purchase record was successfully created.' }
        format.json { render :show, status: :created, location: @purchase_record }
      else
        format.html { render :new }
        format.json { render json: @purchase_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchase_records/1
  # PATCH/PUT /purchase_records/1.json
  def update
    respond_to do |format|
      if @purchase_record.update(purchase_record_params)
        format.html { redirect_to @purchase_record, notice: 'Purchase record was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase_record }
      else
        format.html { render :edit }
        format.json { render json: @purchase_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_records/1
  # DELETE /purchase_records/1.json
  def destroy
    @purchase_record.destroy
    respond_to do |format|
      format.html { redirect_to purchase_records_url, notice: 'Purchase record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_record
      @purchase_record = PurchaseRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def purchase_record_params
      params.require(:purchase_record).permit(:id, :source, :datetime)
    end
end
