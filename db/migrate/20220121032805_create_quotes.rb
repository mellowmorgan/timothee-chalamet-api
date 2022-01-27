class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.name
      t.string :breed
    end
  end
end
