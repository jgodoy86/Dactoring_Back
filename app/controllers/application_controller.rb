class ApplicationController < ActionController::Base
  
  def renderJson(type, opts = {})
    case type
    when :created
      render json: opts, root: false, status: type
    when :unprocessable
      render json: opts, status: :unprocessable_entity
    when :not_found
      head type
    when :unauthorized
      opts[:errors].push("Permiso Denegado")
      render json: opts, status: type
    end
  end
  
end
