class Api::ApiController < ActionController::Base
  respond_to :json

  protected

  def self.responder
    ApiResponder
  end
end
