class ActualVolumesController < ApplicationController
  before_action :set_actual_volume, only: [:show, :edit, :update, :destroy]

  # GET /actual_volumes
  # GET /actual_volumes.json
  def index
    @actual_volumes = ActualVolume.all
  end

  # GET /actual_volumes/1
  # GET /actual_volumes/1.json
  def show
  end

  # GET /actual_volumes/new
  def new
    @actual_volume = ActualVolume.new
  end

  # GET /actual_volumes/1/edit
  def edit
  end

  # POST /actual_volumes
  # POST /actual_volumes.json
  def create
    @actual_volume = ActualVolume.new(actual_volume_params)

    respond_to do |format|
      if @actual_volume.save
        format.html { redirect_to @actual_volume, notice: 'Actual volume was successfully created.' }
        format.json { render :show, status: :created, location: @actual_volume }
      else
        format.html { render :new }
        format.json { render json: @actual_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actual_volumes/1
  # PATCH/PUT /actual_volumes/1.json
  def update
    respond_to do |format|
      if @actual_volume.update(actual_volume_params)
        format.html { redirect_to @actual_volume, notice: 'Actual volume was successfully updated.' }
        format.json { render :show, status: :ok, location: @actual_volume }
      else
        format.html { render :edit }
        format.json { render json: @actual_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actual_volumes/1
  # DELETE /actual_volumes/1.json
  def destroy
    @actual_volume.destroy
    respond_to do |format|
      format.html { redirect_to actual_volumes_url, notice: 'Actual volume was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actual_volume
      @actual_volume = ActualVolume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actual_volume_params
      params.require(:actual_volume).permit(:template_volume_id, :iscsiname)
    end
end
