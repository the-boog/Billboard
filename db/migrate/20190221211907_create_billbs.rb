class CreateBillbs < ActiveRecord::Migration[5.2]
  def change
    create_table :billbs do |t|
      t.string :name
      t.string :genre

      t.timestamps
    end
  end
end
