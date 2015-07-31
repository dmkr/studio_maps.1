class StudioPointsController < ApplicationController
  before_action :set_studio_point, only: [:show, :edit, :update, :destroy]

  # GET /studio_points
  # GET /studio_points.json
  def index
    @studio_points = StudioPoint.all
  end

  # GET /studio_points/1
  # GET /studio_points/1.json
  def show
  end

  # GET /studio_points/new
  def new
    @studio_point = StudioPoint.new
  end

  # GET /studio_points/1/edit
  def edit
  end

  # POST /studio_points
  # POST /studio_points.json
  def create
    @studio_point = StudioPoint.new(studio_point_params)

    respond_to do |format|
      if @studio_point.save
        format.html { redirect_to @studio_point, notice: 'Studio point was successfully created.' }
        format.json { render :show, status: :created, location: @studio_point }
      else
        format.html { render :new }
        format.json { render json: @studio_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studio_points/1
  # PATCH/PUT /studio_points/1.json
  def update
    respond_to do |format|
      if @studio_point.update(studio_point_params)
        format.html { redirect_to @studio_point, notice: 'Studio point was successfully updated.' }
        format.json { render :show, status: :ok, location: @studio_point }
      else
        format.html { render :edit }
        format.json { render json: @studio_point.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studio_points/1
  # DELETE /studio_points/1.json
  def destroy
    @studio_point.destroy
    respond_to do |format|
      format.html { redirect_to studio_points_url, notice: 'Studio point was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_studio_point
      @studio_point = StudioPoint.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def studio_point_params
      params.require(:studio_point).permit(:lat, :lon, :studio_id, :street, :city, :zip, :state)
    end
end
