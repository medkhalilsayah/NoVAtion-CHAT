class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.belongs_to :user

      t.timestamps
    end
  end
end
