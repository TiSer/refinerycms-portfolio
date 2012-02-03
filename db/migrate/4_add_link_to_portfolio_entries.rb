class AddLinkToPortfolioEntries < ActiveRecord::Migration

  def self.up
    add_column :portfolio_entries, :link, :string
  end

  def self.down
    remove_column :portfolio_entries, :link
  end

end
