class InFormsController < ApplicationController

  include InFormsHelper

  def index
    @in_forms = InForm.all
  end

  def show
    @in_forms = InForm.find(params[:id])
    @comment = Comment.new
    @comment.in_form_id = @in_forms.id
  end

  def new
    @in_forms = InForm.new
  end

  def create
    @in_forms = InForm.new(in_form_params)
    if @in_forms.save
      SendInformMailer.send_inform(@user, @in_forms)
      #flash.notice = "#{@in_forms.rank} #{@in_forms.name} your InForm has been emailed to the Wksp FSO"
      flash.notice = "#{@in_forms.rank} #{@in_forms.name} your InForm has been submited to the Wksp FSO"
    end
    redirect_to in_forms_path(@in_forms)
  end

  def destroy
    @in_forms = InForm.find(params[:id])
    @in_forms.destroy
    redirect_to in_forms_path
  end

  def edit
    @in_forms = InForm.find(params[:id])
  end

  def update
    @in_forms = InForm.find(params[:id])
    @in_forms.update(in_form_params)
    redirect_to in_forms_path
  end

end
