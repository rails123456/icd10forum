class CreateBlocks < ActiveRecord::Migration
  def change
    create_table :blocks do |t|
      t.integer :chapter_id
      t.string :block_no
      t.string :block_title
    end
  end
end
