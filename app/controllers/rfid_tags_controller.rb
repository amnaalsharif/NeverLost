class RfidTagsController < ApplicationController
  before_action :set_rfid_tag, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_admin
  before_action :authenticate_user!


    def authenticate_admin
      redirect_to '/', alert: 'Not authorized.' unless current_user && current_user.admin?
    end

  # GET /rfid_tags
  # GET /rfid_tags.json
  def index
    @rfid_tags = RfidTag.all
  end

  # GET /rfid_tags/1
  # GET /rfid_tags/1.json
  def show
  end

  # GET /rfid_tags/new
  def new
    @rfid_tag = RfidTag.new
  end

  # GET /rfid_tags/1/edit
  def edit
  end

  # POST /rfid_tags
  # POST /rfid_tags.json
  def create
    @rfid_tag = RfidTag.new(rfid_tag_params)

    respond_to do |format|
      if @rfid_tag.save
        format.html { redirect_to @rfid_tag, notice: 'Rfid tag was successfully created.' }
        format.json { render :show, status: :created, location: @rfid_tag }
      else
        format.html { render :new }
        format.json { render json: @rfid_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rfid_tags/1
  # PATCH/PUT /rfid_tags/1.json
  def update
    respond_to do |format|
      if @rfid_tag.update(rfid_tag_params)
        format.html { redirect_to @rfid_tag, notice: 'Rfid tag was successfully updated.' }
        format.json { render :show, status: :ok, location: @rfid_tag }
      else
        format.html { render :edit }
        format.json { render json: @rfid_tag.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rfid_tags/1
  # DELETE /rfid_tags/1.json
  def destroy
    @rfid_tag.destroy
    respond_to do |format|
      format.html { redirect_to rfid_tags_url, notice: 'Rfid tag was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rfid_tag
      @rfid_tag = RfidTag.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rfid_tag_params
      params.require(:rfid_tag).permit(:tag_id)
    end
end
