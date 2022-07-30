class AddColumnToReview < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :content, :string
    add_column :reviews, :rating, :integer
  end
end
