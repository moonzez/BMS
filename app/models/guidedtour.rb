class Guidedtour < ActiveRecord::Base
  def contact_person
    [firstname, ' ', lastname].reduce(&:+)
  end
end
