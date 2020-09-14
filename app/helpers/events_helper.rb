module EventsHelper
 def is_creator?
   current_user == @event.creator
 end
end
