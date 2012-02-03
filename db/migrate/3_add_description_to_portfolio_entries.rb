class AddDescriptionToPortfolioEntries < ActiveRecord::Migration

  def self.up
    add_column :portfolio_entries, :description, :string
  end

  def self.down
    remove_column :portfolio_entries, :description
  end

end
