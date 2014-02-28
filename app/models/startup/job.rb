class Startup::Job < ActiveRecord::Base
  belongs_to :startup, counter_cache: true

  validates  :title,         presence: true
  validates  :angellist_url, presence: true
end
