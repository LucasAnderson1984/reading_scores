# frozen_string_literal: true

class ApplicationController < ActionController::Base # :nodoc:
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  def after_sign_out_path_for(_resource_or_scope)
    new_user_session_path
  end
end
