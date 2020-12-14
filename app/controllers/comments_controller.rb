class CommentsController < ApplicationController

  def index
    @comments = Comment.order('created_at DESC')
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
     if @comment.save
      redirect_to root_path
     else
      render :new
     end
  end

  def show
    @comment = Comment.find(params[:id])
  end

  private

  def comment_params
    params.require(:comment).permit(:title, :genre_id, :artwork, :evaluation_id, :text).merge(user_id: current_user.id)
  end

end
