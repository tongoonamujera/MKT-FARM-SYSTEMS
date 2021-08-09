class CreateSetSeasons < ActiveRecord::Migration[6.0]
  def change
    create_table :set_seasons do |t|
      t.date :Date
      t.string :Season
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
