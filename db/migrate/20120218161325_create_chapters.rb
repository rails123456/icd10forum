class CreateChapters < ActiveRecord::Migration
  def change
    create_table :chapters do |t|
      t.string :chap_no, :limit => 2
      t.string :chap_title, :limit => 110
    end
  end
end
