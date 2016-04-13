class CreateChampions < ActiveRecord::Migration
  def change
    create_table :champions do |t|
      t.string :name
      t.string :protrait
      t.integer :ip

      t.timestamps null: false
    end
  end
end
