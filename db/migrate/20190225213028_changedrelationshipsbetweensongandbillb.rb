class Changedrelationshipsbetweensongandbillb < ActiveRecord::Migration[5.2]
  def change
    create_join_table :billbs, :users do |t|
      t.index [:billb_id, :user_id]
    end
  end
end
