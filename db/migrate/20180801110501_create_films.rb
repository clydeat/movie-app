class CreateFilms < ActiveRecord::Migration[5.2]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :release_year
      t.references :director, foreign_key: true

      t.timestamps
    end
  end
end
