module Mutations::User
  class CreateUser < Mutations::BaseMutation

    argument :attributes, InputTypes::UserInputType, required: true    

    def resolve(attributes:)
      new_user = ::User.new(attributes.to_h)
      new_user.save!
      new_user
      
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end

    # override
    def ready?(**args)
      true
    end

  end
end
