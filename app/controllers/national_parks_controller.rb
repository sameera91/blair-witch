class NationalParksController < ApplicationController
  before_action :set_national_park, only: [:show, :edit, :update, :destroy]

  # GET /national_parks
  # GET /national_parks.json
  def index
    @national_parks = NationalPark.all
  end

  # GET /national_parks/1
  # GET /national_parks/1.json
  def show
  end

  # GET /national_parks/new
  def new
    @national_park = NationalPark.new
  end

  # GET /national_parks/1/edit
  def edit
  end

  # POST /national_parks
  # POST /national_parks.json
  def create
    @national_park = NationalPark.new(national_park_params)

    respond_to do |format|
      if @national_park.save
        format.html { redirect_to @national_park, notice: 'National park was successfully created.' }
        format.json { render :show, status: :created, location: @national_park }
      else
        format.html { render :new }
        format.json { render json: @national_park.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /national_parks/1
  # PATCH/PUT /national_parks/1.json
  def update
    respond_to do |format|
      if @national_park.update(national_park_params)
        format.html { redirect_to @national_park, notice: 'National park was successfully updated.' }
        format.json { render :show, status: :ok, location: @national_park }
      else
        format.html { render :edit }
        format.json { render json: @national_park.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /national_parks/1
  # DELETE /national_parks/1.json
  def destroy
    @national_park.destroy
    respond_to do |format|
      format.html { redirect_to national_parks_url, notice: 'National park was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_national_park
      @national_park = NationalPark.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def national_park_params
      params.require(:national_park).permit(:name, :description)
    end
end
