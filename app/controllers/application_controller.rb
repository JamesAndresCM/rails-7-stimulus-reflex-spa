class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :set_current, if: :authenticate_user!
  helper_method :current_team

  private

  def set_current
    Current.user = current_user
    Current.team_users = current_team.users
  end
  def current_team = current_user.team
end
