class Post < ActiveRecord::Base
  #attr_accessible :name, :body, :category_id, :author_id 
  #require(:post).permit(:name, :body, :category_id, :author_id)
  belongs_to :category
end
