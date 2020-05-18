# frozen_string_literal: true

Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphqlPlayground::Rails::Engine, at: '/playground', graphql_path: '/graphql'
  end

  post '/graphql', to: 'graphql#execute'
end
