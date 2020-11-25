class CardsController < ApplicationController


  def control_products; end

  # Show Card
  def show
    @card = Card.find(params[:id])
  end

  # New Card
  def new
    @card = Card.new
  end

  # Create Cards
  def create
    @card = Card.new(card_params)

    if @card.save
      redirect_to @card

    else
      render json: {
        status: :dead,
        creation: :denied,
        name: @card.cardname,
        price: @card.cardprice,
        description: @card.carddes,
        genre: @card.cardgen,
        pages: @card.cardpage,
        year: @card.cardyear,
        downloads: @card.carddownload,
        errors: @card.errors.any?,
        info: @card.errors.full_messages.each
      }
    end

  end

  # Card Params
  public def card_params
    params.require(:card).permit(:cardname, :cardprice, :carddes, :cardgen, :cardpage, :cardyear, :carddownload, :cardpremium)
  end
end
