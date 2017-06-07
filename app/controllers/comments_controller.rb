class CommentsController < ApplicationController
  def create
    @pin = Pin.find(params[:pin_id])
    @comment = @pin.comments.create(params[:comment].permit(:name, :body))
    redirect_to pin_path(@pin)
  end

  def destroy
    @pin = Pin.find(params[:pin_id])
    @comment = @pin.comments.find(params[:id])
    @comment.destroy
    redirect_to pin_path(@pin)
  end
end
