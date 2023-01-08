class CreateRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :roles do |t|
      t.string :role_type
      t.belongs_to :user

      t.timestamps
    end
  end
end
