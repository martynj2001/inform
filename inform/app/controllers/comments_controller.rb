class CommentsController < ApplicationController

  include CommentsHelper

  def create
    @comment = Comment.new(comment_params)
    @comment.in_form_id = params[:in_form_id]
    @comment.save

    flash.notice = "#{@comment.author_name} your response has been saved, the InForm authro will be notified."

    redirect_to in_forms_path(@comment.in_form_id)
  end
end
