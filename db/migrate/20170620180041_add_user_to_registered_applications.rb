class AddUserToRegisteredApplications < ActiveRecord::Migration[5.0]
  def change
    add_reference :registered_applications, :user, foreign_key: true, index: true
  end
end
