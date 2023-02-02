class AddWebsiteUrlColumnToBlogs < ActiveRecord::Migration[7.0]
  def change
    add_column :blogs, :website_url, :string
  end
end
