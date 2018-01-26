class InFormsController < ApplicationController

  def index
    @in_forms = InForm.all
  end

  def show
    @in_forms = InForm.find(params[:id])
  end


end
