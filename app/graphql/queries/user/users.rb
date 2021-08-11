module Queries
  class User::Users < Queries::BaseQuery

    type [OutputTypes::UserType], null: true

    def resolve
        ::User.all.order("ID DESC")
    end
  end
end