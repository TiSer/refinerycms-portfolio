class AddBooleansToPortfolioEntries < ActiveRecord::Migration

  def self.up
    add_column :portfolio_entries, :mobile, :boolean, :default => false
    add_column :portfolio_entries, :tablet, :boolean, :default => false
    add_column :portfolio_entries, :web, :boolean, :default => false
  end

  def self.down
    remove_column :portfolio_entries, :mobile
    remove_column :portfolio_entries, :tablet
    remove_column :portfolio_entries, :web
  end

end
