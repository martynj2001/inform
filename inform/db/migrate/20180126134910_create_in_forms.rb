class CreateInForms < ActiveRecord::Migration[5.0]
  def change
    create_table :in_forms do |t|
      t.string :name
      t.string :rank
      t.string :num
      t.string :pl
      t.string :email
      t.text :body
      t.timestamps
    end
  end
end
