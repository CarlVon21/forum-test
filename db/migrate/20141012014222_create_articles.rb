class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :permalink
      t.text :summary
      t.text :content
      t.string :author
      t.integer :rating
      t.string :category

      t.timestamps
    end
  end
end
