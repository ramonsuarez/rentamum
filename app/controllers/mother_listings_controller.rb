class MotherListingsController < ApplicationController
  before_action :set_mother_listing, only: [:show, :edit, :update, :destroy]

  def index
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_mother_listing
    @mother_listing = MotherListing.find(params[:id])
  end


  def mother_listing_params
    params.require(:mother_listing).permit(:id)

end
