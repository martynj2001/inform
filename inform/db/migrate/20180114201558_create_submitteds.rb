class CreateSubmitteds < ActiveRecord::Migration[5.0]
  def change
    create_table :submitteds do |t|

      t.string :rank
      t.string :name
      t.string :pl
      t.string :email
      t.text :body

      t.timestamps
    end
  end
end
