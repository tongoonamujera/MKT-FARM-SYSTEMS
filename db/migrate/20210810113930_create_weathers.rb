class CreateWeathers < ActiveRecord::Migration[6.0]
  def change
    create_table :weathers do |t|
      t.date :Date
      t.string :Area
      t.string :Min
      t.string :Max
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
