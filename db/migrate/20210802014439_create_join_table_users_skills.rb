class CreateJoinTableUsersSkills < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :skills do |t|
      t.index [:user_id, :skill_id]
      t.index [:skill_id, :user_id]
	  t.integer :rate, limit: 2, unsigned: true
      t.integer :price, limit: 2, unsigned: true
    end
  end
end
