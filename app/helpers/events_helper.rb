module EventsHelper
  def is_creator? # rubocop:todo Naming/PredicateName
    current_user == @event.creator
  end
end
