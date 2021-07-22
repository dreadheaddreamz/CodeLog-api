class CreateTrackers < ActiveRecord::Migration[6.0]
  def change
    create_table :trackers do |t|
      t.string :date
      t.string :language
      t.string :notes
      t.string :length
      
      t.timestamps
    end
  end
end
