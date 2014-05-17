class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.references :project, index: true
      t.datetime :from
      t.decimal :duration

      t.timestamps
    end
  end
end
