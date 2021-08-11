module Mutations::Job
  class CreateJob < Mutations::BaseMutation

    argument :attributes, InputTypes::Job::JobInputType, required: true    

    def resolve(attributes:)
      new_job = Job.create!(attributes.to_h)
      new_job.user_id = context[:current_user].id
      new_job if new_job.save!
      
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end

    # override
    def ready?(**args)
      true
    end

  end
end
