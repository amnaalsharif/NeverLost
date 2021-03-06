class DetectionsController < ApplicationController
  before_action :set_detection, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin
  before_action :authenticate_user!


    def authenticate_admin
      redirect_to '/', alert: 'Not authorized.' unless current_user && current_user.admin?
    end

  # GET /detections
  # GET /detections.json
  def index
    @detections = Detection.all
  end

  # GET /detections/1
  # GET /detections/1.json
  def show
  end

  # GET /detections/new
  def new
    @detection = Detection.new
  end

  # GET /detections/1/edit
  def edit
  end

  # POST /detections
  # POST /detections.json
  def create
    @detection = Detection.new(detection_params)

    respond_to do |format|
      if @detection.save
        format.html { redirect_to @detection, notice: 'Detection was successfully created.' }
        format.json { render :show, status: :created, location: @detection }
      else
        format.html { render :new }
        format.json { render json: @detection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detections/1
  # PATCH/PUT /detections/1.json
  def update
    respond_to do |format|
      if @detection.update(detection_params)
        format.html { redirect_to @detection, notice: 'Detection was successfully updated.' }
        format.json { render :show, status: :ok, location: @detection }
      else
        format.html { render :edit }
        format.json { render json: @detection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detections/1
  # DELETE /detections/1.json
  def destroy
    @detection.destroy
    respond_to do |format|
      format.html { redirect_to detections_url, notice: 'Detection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detection
      @detection = Detection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detection_params
      params.require(:detection).permit(:tag_id, :sensor_id, :time)
    end
end
