ActiveAdmin.register Customer do

  permit_params :first_name, :last_name, :email, :image, :phone_number

end
