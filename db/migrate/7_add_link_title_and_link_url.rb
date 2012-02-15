class AddLinkTitleAndLinkUrl < ActiveRecord::Migration

  def self.up
    rename_column :portfolio_entries, :link, :link_title
    add_column :portfolio_entries, :link_url, :string
  end

  def self.down
    rename_column :portfolio_entries, :link_title, :link
    remove_column :portfolio_entries, :link_url, :string
  end

end
