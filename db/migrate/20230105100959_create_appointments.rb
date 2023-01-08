class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.string :patient_name
      t.datetime :DOA
      t.belongs_to :user
      
      t.timestamps
    end
  end
end
