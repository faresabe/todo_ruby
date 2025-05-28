class ApplicationController < ActionController::Base
  include Authentication
  allow_browser versions: :modern
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
=begin 
 
  before_action :track_last_visit
  before_action :track_page_visits

  private
  
 
  def track_page_visits
    session[:page_visits] ||= {}
    path = request.path
    session[:page_visits][path] = session[:page_visits].fetch(path, 0) + 1
  
    session[:total_visits] ||= 0
    session[:total_visits] += 1
  end
  
private

def track_last_visit
  @last_visit = session[:last_visit]
  session[:last_visit] = Time.current
end
=end

end
