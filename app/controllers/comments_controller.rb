class CommentsController < ApplicationController

  def index
    comments = Comment.all
    render json: CommentSerializer.new(comments)
  end

  def show
    comment = Comment.find(params[:id])
    render json: CommentSerializer.new(comment)
  end

  def new
    comment = Comment.new
  end

  def create
    puts params
    comment = Comment.new(comment_params)
    comment.save!
    render json: comment
  end

  private

  def comment_params
    params.require(:comment).permit(:user_id, :beer_id, :text)
  end


end
