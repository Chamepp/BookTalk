class CardsController < ApplicationController
  include CurrentAdminConcern

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

  # Edit Cards
  def edit
    if set_current_admin
      @card = Card.find(params[:id])

    else
      render 'pages/404'
    end
  end

  # Update Cards
  def update
    @card = Card.find(params[:id])
    if @card.update(card_params)
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

  # Delete Cards
  def destroy
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to explore_path
  end

  # User Profile
  def library
    @user = User.all
    @user = User.find_by(params[:id])
    type = params[:type]

    if type.eql?('add')
      @current_user.books_additions << @card

    elsif type.eql?('remove')
      @current_user.books_additions.delete(@card)
    end
  end


  # Card Params
  public def card_params
    params.require(:card).permit(:cardname, :cardprice, :carddes, :cardgen, :cardpage, :cardyear, :carddownload, :cardpremium, :cardpic)
  end
end
