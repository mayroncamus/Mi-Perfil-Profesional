class CreateIncidents < ActiveRecord::Migration
  def change
    create_table :incidents do |t|
      t.string :target
      t.string :message

      t.timestamps null: false
    end
  end
end
