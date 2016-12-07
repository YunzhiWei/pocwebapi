class LoginRecordsController < ApplicationController
  before_action :set_login_record, only: [:show, :edit, :update, :destroy]

  # GET /login_records
  # GET /login_records.json
  def index
    @login_records = LoginRecord.all
  end

  # GET /login_records/1
  # GET /login_records/1.json
  def show
  end

  # GET /login_records/new
  def new
    @login_record = LoginRecord.new
  end

  # GET /login_records/1/edit
  def edit
  end

  # POST /login_records
  # POST /login_records.json
  def create
    @login_record = LoginRecord.new(login_record_params)

    respond_to do |format|
      if @login_record.save
        format.html { redirect_to @login_record, notice: 'Login record was successfully created.' }
        format.json { render :show, status: :created, location: @login_record }
      else
        format.html { render :new }
        format.json { render json: @login_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /login_records/1
  # PATCH/PUT /login_records/1.json
  def update
    respond_to do |format|
      if @login_record.update(login_record_params)
        format.html { redirect_to @login_record, notice: 'Login record was successfully updated.' }
        format.json { render :show, status: :ok, location: @login_record }
      else
        format.html { render :edit }
        format.json { render json: @login_record.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /login_records/1
  # DELETE /login_records/1.json
  def destroy
    @login_record.destroy
    respond_to do |format|
      format.html { redirect_to login_records_url, notice: 'Login record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_login_record
      @login_record = LoginRecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def login_record_params
      params.require(:login_record).permit(:id, :source, :datetime)
    end
end
