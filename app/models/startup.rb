class Startup < ActiveRecord::Base
  validates :name,          presence: true
  validates :angellist_url, presence: true

  scope     :hiring,        -> { where('jobs_count > 0') }
  scope     :within_bounds, -> (location) { binding.pry }
end
