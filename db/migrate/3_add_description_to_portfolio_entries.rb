class AddDescriptionToPortfolioEntries < ActiveRecord::Migration

  def self.up
    add_column :portfolio_entries, :description, :string
  end

  def self.down
    drop_column :portfolio_entries, :description
  end

end
