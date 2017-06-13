class TemplateVolumesController < ApplicationController
  before_action :set_template_volume, only: [:show, :edit, :update, :destroy]

  # GET /template_volumes
  # GET /template_volumes.json
  def index
    @template_volumes = TemplateVolume.order(:name)
  end

  # GET /template_volumes/1
  # GET /template_volumes/1.json
  def show
  end

  # GET /template_volumes/new
  def new
    @template_volume = TemplateVolume.new
  end

  # GET /template_volumes/1/edit
  def edit
  end

  # POST /template_volumes
  # POST /template_volumes.json
  def create
    @template_volume = TemplateVolume.new(template_volume_params)

    respond_to do |format|
      if @template_volume.save
        format.html { redirect_to @template_volume, notice: 'Template volume was successfully created.' }
        format.json { render :show, status: :created, location: @template_volume }
      else
        format.html { render :new }
        format.json { render json: @template_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /template_volumes/1
  # PATCH/PUT /template_volumes/1.json
  def update
    respond_to do |format|
      if @template_volume.update(template_volume_params)
        format.html { redirect_to @template_volume, notice: 'Template volume was successfully updated.' }
        format.json { render :show, status: :ok, location: @template_volume }
      else
        format.html { render :edit }
        format.json { render json: @template_volume.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /template_volumes/1
  # DELETE /template_volumes/1.json
  def destroy
    @template_volume.destroy
    respond_to do |format|
      format.html { redirect_to template_volumes_url, notice: 'Template volume was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_template_volume
      @template_volume = TemplateVolume.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def template_volume_params
      params.require(:template_volume).permit(:name, :iscsiname, :description, :os_type_id)
    end
end
