class CreateCodes < ActiveRecord::Migration
  def change
    create_table :codes do |t|
      t.integer :block_id
      t.string :code_3, :limit => 3
      t.string :code_6, :limit => 6
      t.string :code_title, :limit => 255
    end
  end
end
