class OffersController < ApplicationController
  before_action :set_offer, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    if current_user&.user? || !user_signed_in?
      @offers = Offer.all
      filters_location = offer_params.slice("Mitte", "Friedrichshain-Kreuzberg", "Pankow", "Charlottenburg-Wilmersdorf", "Spandau", "Steglitz-Zehlendorf", "Tempelhof-Schöneberg", "Neukölln", "Treptow-Köpenick", "Marzahn-Hellersdorf", "Lichtenberg", "Reinickendorf")
      if filters_location != {}
        unless filters_location.values.all? { |value| value == "0" }
          active_filters = filters_location.to_hash.filter { |key, value| value == "1" }.keys
          filtered_district_offers = []
          @offers.each do |offer|
            filtered_district_offers << offer if active_filters.include?(offer.district.name)
          end
        end
        @offers = filtered_district_offers
      end
      filters_categories = offer_params.slice("Children & Adolescents", "Seniors", "People with special needs", "LGBTQ", "Refugee background","Nature","Everyone is welcome")
      if filters_categories != {}
        if filters_categories.values.all? { |value| value == "0" }
          filtered_district_offers
        else
          active_filters = filters_categories.to_hash.filter { |key, value| value == "1" }.keys
          filtered_offers = []
          @offers.each do |offer|
            offer.categories.each do |offer_catergory|
              filtered_offers << offer if active_filters.include?(offer_catergory.name)
            end
          end
          @offers = filtered_offers.uniq
        end
      end
    else
      @offers = current_user.offers
    end
    @markers = @offers.filter { |offer| !offer.latitude.nil? && !offer.longitude.nil? }.map do |offer|
      {
        lat: offer.latitude,
        lng: offer.longitude,
        info_window: render_to_string(partial: "info_window", locals: { offer: offer })
      }
    end
    @offer = Offer.new

  end

  def show
  end

  def new
    @offer = Offer.new
    # @offer.district = District.find(params[:district_id])
    # @district = @offer.district
  end

  def create
    @offer = Offer.new(create_params)
    @offer.user = current_user
    if @offer.save
      multiple_categories.each do |category|
        OfferCategory.create(offer: @offer, category: category)
      end
      redirect_to offer_path(@offer)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @offer.update(create_params)
    redirect_to offer_path(@offer)
  end

  def destroy
    @offer.destroy
    redirect_to offers_path
  end

  private

  def set_offer
    @offer = Offer.find(params[:id])
  end

  def offer_params
    params.permit("Mitte", "Friedrichshain-Kreuzberg", "Pankow", "Charlottenburg-Wilmersdorf", "Spandau", "Steglitz-Zehlendorf", "Tempelhof-Schöneberg", "Neukölln", "Treptow-Köpenick", "Marzahn-Hellersdorf", "Lichtenberg","Reinickendorf", "Children & Adolescents", "Seniors", "People with special needs", "LGBTQ", "Refugee background", "Nature", "Everyone is welcome")
  end

  def create_params
    params.require(:offer).permit(:title, :description, :address, :email, :district_id, :category_ids)
  end

  def multiple_categories
    params[:offer][:category_ids].map do |id|
      unless id == ""
        Category.find(id)
      end
    end
  end
end
