module InputTypes
  class UserInputType < InputTypes::Base

    description 'Fields for user update'

    argument :first_name, String, required: false
    argument :last_name, String, required: false
    argument :email, String, required: false
    argument :password, String, required:false
    argument :password_confirmation, String, required: false
 

  end
end
