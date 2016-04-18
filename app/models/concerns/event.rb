module Event
  extend ActiveSupport::Concern

  def contact_person
    [firstname, ' ', lastname].reduce(&:+)
  end
end
