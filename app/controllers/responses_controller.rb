class ResponsesController < ApplicationController
  before_action :set_response, only: [:show, :edit, :update, :destroy]

  # GET /responses
  # GET /responses.json
  def index
    @responses = Response.all
  end

  def thanks
  end

  # GET /responses/1
  # GET /responses/1.json
  def show
  end

  # GET /responses/new
  def new
    @response = Response.new
  end

  # GET /responses/1/edit
  def edit
  end

  # POST /responses
  # POST /responses.json
  def create
    @response = Response.new(response_params)

    respond_to do |format|
      if @response.save
        format.html { redirect_to thanks_path, notice: 'Your response was successfully saved.' }
        format.json { render :show, status: :created, location: @response }
      else
        format.html { render :new }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /responses/1
  # PATCH/PUT /responses/1.json
  def update
    respond_to do |format|
      if @response.update(response_params)
        format.html { redirect_to @response, notice: 'Response was successfully updated.' }
        format.json { render :show, status: :ok, location: @response }
      else
        format.html { render :edit }
        format.json { render json: @response.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /responses/1
  # DELETE /responses/1.json
  def destroy
    @response.destroy
    respond_to do |format|
      format.html { redirect_to responses_url, notice: 'Response was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def export
    response_csv = CSV.generate do |csv|
      csv << Response.attribute_names
      Response.order(:created_at).each do |r|
        csv << r.attributes.values
      end
    end
    respond_to do |format|
      format.csv { send_data response_csv }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_response
      @response = Response.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def response_params
      params[:response].permit(:site, :responder, :geo_own, :geo_freq, :geo_burden, :geo_time, :geo_comment, :limit_control, :limit_cost, :limit_progtime, :limit_staff, :limit_timely, :limit_space, :limit_technical, :limit_uncodeable, :limit_proctime, :limit_comment, :imp_simple_produce, :imp_time_produce, :imp_simple_use, :imp_time_use, :imp_historical, :imp_timely, :imp_comment, :use_block, :use_blockgroup, :use_tract, :use_zcta, :use_comment, :general_comment, :created_at, :updated_at, :imp_geocode, :imp_latlong, :role, :role_other, :imp_housing, :imp_moe, :imp_ses, :imp_race)
    end
end
