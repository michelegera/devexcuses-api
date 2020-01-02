class RemoveIntegerIdFromExcuses < ActiveRecord::Migration[6.0]
  def change
    remove_column :excuses, :integer_id, :bigint
  end
end
