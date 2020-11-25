class CommentsController < ApplicationController

  # Create Comments
  def create
    @card = Card.find(params[:card_id])
    @comment = @card.comments.create([comment_params])

    redirect_to card_path(@card)

  end


  # Comments Params
  public def comment_params
    params.require(:comment).permit(:commentbody)
  end
end
