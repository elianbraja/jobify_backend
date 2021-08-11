module Queries
  class Job::Jobs < Queries::BaseQuery

    type [OutputTypes::Jobs::JobType], null: true
    argument :id, ID, required: false
    
    def resolve(id: nil)
        if id
          ::Job.where(id: id)
        else  
          ::Job.all.order("ID DESC")
        end
    end
  end
end