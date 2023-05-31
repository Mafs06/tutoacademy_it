# config/graphql/client.rb

require 'graphql/client'
require 'graphql/client/http'

uri = 'http://host.docker.internal:4000/graphql'


module GraphQl
  HTTP = GraphQL::Client::HTTP.new('http://host.docker.internal:4000/graphql') do
  end

  Schema = GraphQL::Client.load_schema(HTTP)

  Client = GraphQL::Client.new(schema: Schema, execute: HTTP)
end

