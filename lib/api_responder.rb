class ApiResponder < ActionController::Responder
  module JsonResponder
    def to_json
      template = [controller.action_name, controller.params[:api_id], 'json.rabl'].join('.')
      render template, :layout => false
    rescue ActionView::MissingTemplate => e
      render :text => "This version has not been supported yet."
    end
  end

  module XmlResponder; end

  include JsonResponder
end
