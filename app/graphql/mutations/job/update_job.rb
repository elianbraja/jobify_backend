module Mutations::Job
  class UpdateJob < Mutations::BaseMutation

    argument :job_id, ID, required: true    
    argument :attributes, InputTypes::Job::JobInputType, required: true    

    def resolve(job_id:, attributes:)
      update_job = Job.find(job_id)
      update_job.update(attributes.to_h)
      update_job if update_job.save!
      
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end

    # override
    def ready?(**args)
      true
    end

  end
end
