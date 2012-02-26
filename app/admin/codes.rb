ActiveAdmin.register Code, { :sort_order => :id } do
  menu :label => 'ICD10 Code', :priority => 300
  
  actions :index
  # or
  # actions :all, :except => [:new]
  
  index do
    column :id
    column :code_3
    column :code_6
    column :code_title
  end
end
