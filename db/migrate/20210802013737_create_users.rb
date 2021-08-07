class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, :limit => 128, :null => false
      t.string :email, :limit => 256, :null => false, :index => true
      t.string :cc, :limit => 4, :default => '65'
      t.string :tel, :limit => 12

      t.integer :status, :limit => 1, :unsigned => true, :default => 1

      t.timestamps
    end
  end
end
