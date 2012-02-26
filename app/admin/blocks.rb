ActiveAdmin.register Block, { :sort_order => :id } do
  menu :priority => 200

  actions :index
  # or
  # actions :all, :except => [:new]
  
  index do
    column :id
    column :block_no
    column :block_title
  end
end
