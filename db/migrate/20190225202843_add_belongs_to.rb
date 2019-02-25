class AddBelongsTo < ActiveRecord::Migration[5.2]
  def change
    add_reference :billbs, :user, foreign_key: true
  end
end

