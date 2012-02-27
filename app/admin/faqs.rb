ActiveAdmin.register Faq, {:sort_order => "id_desc"} do
  config.per_page = 5

  index do
    column "Order", :id
    column "Question", :faq_q
    column "Answer", :faq_a
  end
  
  filter :faq_q, :label => "Question"
  filter :faq_a, :label => "Answer"
end
