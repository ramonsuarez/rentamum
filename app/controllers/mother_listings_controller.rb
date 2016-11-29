class MotherListingsController < ApplicationController
  before_action :set_mother_listing, only: [:show, :edit, :update, :destroy]

  def index
    @mother_listings = MotherListing.all
  end

  def show

  end

  def new
    @mother_listings = MotherListing.new

  end

  def create
    @mother_listing = MotherListing.new(mother_listing_params)
    if @mother_listing.save
      redirect_to mother_listing_path(@mother_listing)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @mother_listing.update(mother_listing_params)
    redirect_to mother_listings_path(@mother_listing)
  end

  def destroy
    @mother_listing = MotherListing.find(params[:id])
    @mother_listing.destroy
    redirect_to mother_listings_path
  end

  private

  def set_mother_listing
    @mother_listing = MotherListing.find(params[:id])
  end


  def mother_listing_params
    params.require(:mother_listing).permit(:id)

end
