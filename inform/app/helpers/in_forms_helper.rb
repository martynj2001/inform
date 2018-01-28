module InFormsHelper

  def in_form_params
    params.require(:in_form).permit(:name, :rank, :num, :email, :body, :pl)
  end

end
