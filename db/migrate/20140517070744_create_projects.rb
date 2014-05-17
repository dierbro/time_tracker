class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.references :customer, index: true
      t.decimal :hourly_rate

      t.timestamps
    end
  end
end
