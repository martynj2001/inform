class CreateResponses < ActiveRecord::Migration[5.0]
  def change
    create_table :responses do |t|
      t.string :author_name
      t.text :body
      t.references :in_form, foreign_key: true

      t.timestamps
    end
  end
end
