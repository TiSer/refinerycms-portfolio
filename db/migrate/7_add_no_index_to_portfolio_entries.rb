class AddNoIndexToPortfolioEntries < ActiveRecord::Migration

  def self.up
    add_column :portfolio_entries, :no_index, :boolean
  end

  def self.down
    remove_column :portfolio_entries, :no_index
  end

end
