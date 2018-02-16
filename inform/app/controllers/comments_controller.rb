class CommentsController < ApplicationController

  include CommentsHelper

  before_action :new_comment, :only => [:create]

  load_and_authorize_resource

  def create
    @comment = Comment.new(comment_params)
    @comment.in_form_id = params[:in_form_id]
    if @comment.save
      SendInformMailer.send_inform(@user, InForm.find(@comment.in_form_id)).deliver
      flash.notice = "#{@comment.author_name} your response has been saved, the InForm author will be notified."
    end
    redirect_to in_forms_path(@comment.in_form_id)
  end

  private

  def new_comment
    @comment = Comment.new(comment_params)
  end


end
