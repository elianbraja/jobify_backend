module OutputTypes::Jobs
  class JobType < OutputTypes::BaseObject

    description 'Returns the current user'
    
    field :id, ID, 'job id', null: false
    field :title, String, 'job title', null: false
    field :description, String, 'job description', null: false
    field :user_id, ID, 'user', null: false
  
  end
end