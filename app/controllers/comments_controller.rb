class CommentsController < ApplicationController

  def index
    @comments = Comment.all
  end

  def new
    @comment = Comment.all
  end

  def create
    Comment.create(comment_params)
  end
  
end
