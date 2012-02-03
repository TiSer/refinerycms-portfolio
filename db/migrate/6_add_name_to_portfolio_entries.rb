class AddNameToPortfolioEntries < ActiveRecord::Migration

  def self.up
    add_column :portfolio_entries, :name, :string
  end

  def self.down
    remove_column :portfolio_entries, :name
  end

end
