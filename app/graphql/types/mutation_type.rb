module Types
  class MutationType < Types::BaseObject
    
    # users
    field :create_user, OutputTypes::UserType, mutation: Mutations::User::CreateUser, null:true
    field :update_user, OutputTypes::UserType, mutation: Mutations::User::UpdateUser, null:true
    field :confirm_email, OutputTypes::ResultType, mutation: Mutations::User::ConfirmEmail, null:true
    field :login_user, OutputTypes::UserType, mutation: Mutations::User::LoginUser, null:true

    # jobs
    field :create_job, OutputTypes::Jobs::JobType, mutation: Mutations::Job::CreateJob, null:true
    field :update_job, OutputTypes::Jobs::JobType, mutation: Mutations::Job::UpdateJob, null:true
    
  end
end
