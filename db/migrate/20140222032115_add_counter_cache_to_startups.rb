class AddCounterCacheToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :jobs_count, :integer, default: 0
  end
end
