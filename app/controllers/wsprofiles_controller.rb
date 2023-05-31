
require_relative '../../graphql/client.rb'
require 'graphql/client'
require 'graphql/client/http'
include GraphQl

class WsprofilesController < ApplicationController



    soap_service namespace: 'urn:WashOutProfile', camelize_wsdl: :lower
    # make transaction case
    soap_action "AllProfiles",
                :args   => {},
                :return => :json

    
    def AllProfiles

      result = GraphQl::Client.parse(File.read('C:\Users\mafec\OneDrive\Escritorio\arqui_soft\tutoacademy\tutoacademy_it\graphql\querys.graphql'))
      if result.errors.any?
        # Handle errors
        render json: { errors: result.errors }
      else
        # Access the returned data
        data = result.data
      
        # Process the data as needed
        #some_field = data.some_field
        render json: data
      end
    end
  end
  