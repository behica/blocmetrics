class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :eventname
      t.references :registered_application, foreign_key: true

      t.timestamps
    end
    add_index :events, :eventname
  end
end
