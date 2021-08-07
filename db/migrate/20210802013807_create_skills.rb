class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :name, limit: 64, null: false
      t.text :desc
      t.json :spec

      t.integer :status, :limit => 1, :unsigned => true, :default => 1

      t.integer :created_by, unsigned: true
      t.timestamps
    end
  end
end
