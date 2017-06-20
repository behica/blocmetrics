class CreateRegisteredApplications < ActiveRecord::Migration[5.0]
  def change
    create_table :registered_applications do |t|
      t.string :name
      t.text :url

      t.timestamps null: false
    end
  end
end
