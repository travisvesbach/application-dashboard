class CreateUserApplications < ActiveRecord::Migration[7.1]
  def change
    create_table :user_applications do |t|
      t.references :user, null: false, foreign_key: true
      t.references :application, null: false, foreign_key: true
      t.integer :position

      t.timestamps
    end
  end
end
