module ApplicationHelper
  def show_links
    if !@current_user.nil?
      out = (link_to @current_user.name, user_path(@current_user))
      out << (link_to '-- Log Out --   ', logout_path)
      out << (link_to '-- Create new event --  ', new_event_path(@event))
      out << (link_to '-- See all User events --   ', user_path(@current_user))
    else
      out = (link_to '--- Sign in ---   ', login_path)
    end

    out << (link_to '-- Events List --', events_path(@event))
  end
end
