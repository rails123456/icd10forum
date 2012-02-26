ActiveAdmin.register Chapter, { :sort_order => :id } do
  menu :priority => 100

  actions :index
  # or
  # actions :all, :except => [:new]

  index do
    column :id
    column :chap_no
    column :chap_title
  end
end
