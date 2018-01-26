class InFormsController < ApplicationController

  def index
    @in_forms = InForm.all
  end


end
