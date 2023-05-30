class WsprofilesController < ApplicationController
    soap_service namespace: 'urn:WashOutProfile', camelize_wsdl: :lower
    # make transaction case
    soap_action "helloWorld",
                :args   => { :name => :string, :lastName => :string},
                :return => :string
    def helloWorld
      render :soap => "Hello World to " + params[:name] + " " + params[:lastName]
    end
  end
  