module Mutations::User
  class UpdateUser < Mutations::BaseMutation

    argument :attributes, InputTypes::UserInputType, required: true    
    argument :user_id, ID, required: true    

    def resolve(attributes:, user_id:)
      user = User.find(user_id)
      user.update!(attributes.to_h)
      user.confirm if user.save!
      user

    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end

    # override
    def ready?(**args)
      true
    end

  end
end
