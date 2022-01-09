# frozen_string_literal: true

class AddUuidToExcuses < ActiveRecord::Migration[6.0]
  def up
    add_column :excuses, :uuid, :uuid, default: 'gen_random_uuid()', null: false
    rename_column :excuses, :id, :integer_id
    rename_column :excuses, :uuid, :id
    execute 'ALTER TABLE excuses drop constraint excuses_pkey;'
    execute 'ALTER TABLE excuses ADD PRIMARY KEY (id);'

    # Optinally you remove auto-incremented
    # default value for integer_id column
    execute 'ALTER TABLE ONLY excuses ALTER COLUMN integer_id DROP DEFAULT;'
    change_column_null :excuses, :integer_id, true
    execute 'DROP SEQUENCE IF EXISTS excuses_id_seq'
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
