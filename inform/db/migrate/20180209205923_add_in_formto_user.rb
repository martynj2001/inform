class AddInFormtoUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :in_forms, :user, index: true
  end
end
