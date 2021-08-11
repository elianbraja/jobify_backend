module Types
  class QueryType < Types::BaseObject
    
    # users
    field :current_user, resolver: Queries::User::CurrentUser
    field :users, resolver: Queries::User::Users

    # jobs
    field :jobs, resolver: Queries::Job::Jobs
  
  end
end
