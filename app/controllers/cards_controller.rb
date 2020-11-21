class CardsController < ApplicationController


  # Control Products Page
  def control_products; end

  # Show Card
  def show
    @card = Card.find(params[:id])
  end

  # New Cards
  def new
    @card = Card.new
  end

  # Create Cards
  def create
    @card = Card.new(card_params)

    if @card.save

      redirect_to @card

    else
      render json: { status: 400 }
    end
  end



  # Card Params
  public def card_params

    params.require(:card).permit(:cardname, :cardprice, :carddes)

  end

end
