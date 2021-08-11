module InputTypes
  module Job
    class JobInputType < InputTypes::Base

      description 'Fields for create jobs'

      argument :title, String, required: false
      argument :description, String, required: false

    end
  end
end
