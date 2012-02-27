class CreateFaqs < ActiveRecord::Migration
  def change
    create_table :faqs do |t|
      t.string :faq_item
      t.string :faq_q, :limit => 2048
      t.string :faq_a, :limit => 2048
    end
  end
end
