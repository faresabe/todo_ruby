module ApplicationHelper
    def time_since_last_visit
        return "This is your first visit." unless @last_visit
      
        distance = Time.current - Time.parse(@last_visit.to_s)
        if distance < 60
          "Last visited: #{distance.to_i} seconds ago"
        elsif distance < 3600
          "Last visited: #{(distance / 60).to_i} minutes ago"
        elsif distance < 86400
          "Last visited: #{(distance / 3600).to_i} hours ago"
        else
          "Last visited: #{(distance / 86400).to_i} days ago"
        end
    end
    def page_visit_count
        path = request.path
        session[:page_visits][path] || 0
    end
      
      def total_visit_count
        session[:total_visits] || 0
      end
      def time_based_greeting
        hour = Time.current.hour
        case hour
        when 5..11
          "Good morning!"
        when 12..16
          "Good afternoon!"
        when 17..20
          "Good evening!"
        else
          "Good night!"
        end
      end
      
end
