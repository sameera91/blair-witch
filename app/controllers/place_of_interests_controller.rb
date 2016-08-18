class PlaceOfInterestsController < ApplicationController
  before_action :set_place_of_interest, only: [:show, :edit, :update, :destroy]

  # GET /place_of_interests
  # GET /place_of_interests.json
  def index
    @place_of_interests = PlaceOfInterest.all
  end

  # GET /place_of_interests/1
  # GET /place_of_interests/1.json
  def show

  end

  def next_place
    @place_of_interest_name = PlaceOfInterest.order("RANDOM()").first.name
    @place_of_interest_address = PlaceOfInterest.order("RANDOM()").address
    @place_of_interest_latitude = PlaceOfInterest.order("RANDOM()").latitude
    @place_of_interest_longitude = PlaceOfInterest.order("RANDOM()").longitude
  end

  # GET /place_of_interests/new
  def new
    @place_of_interest = PlaceOfInterest.new
  end

  # GET /place_of_interests/1/edit
  def edit
  end

  # POST /place_of_interests
  # POST /place_of_interests.json
  def create
    @place_of_interest = PlaceOfInterest.new(place_of_interest_params)

    respond_to do |format|
      if @place_of_interest.save
        format.html { redirect_to @place_of_interest, notice: 'Place of interest was successfully created.' }
        format.json { render :show, status: :created, location: @place_of_interest }
      else
        format.html { render :new }
        format.json { render json: @place_of_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /place_of_interests/1
  # PATCH/PUT /place_of_interests/1.json
  def update
    respond_to do |format|
      if @place_of_interest.update(place_of_interest_params)
        format.html { redirect_to @place_of_interest, notice: 'Place of interest was successfully updated.' }
        format.json { render :show, status: :ok, location: @place_of_interest }
      else
        format.html { render :edit }
        format.json { render json: @place_of_interest.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /place_of_interests/1
  # DELETE /place_of_interests/1.json
  def destroy
    @place_of_interest.destroy
    respond_to do |format|
      format.html { redirect_to place_of_interests_url, notice: 'Place of interest was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place_of_interest
      @place_of_interest = PlaceOfInterest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def place_of_interest_params
      params.require(:place_of_interest).permit(:name, :latitude, :longitude, :address, :national_park_id)
    end
end
