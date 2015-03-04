class Article < ActiveRecord::Base
  translates :title, :introduction, :body
  has_and_belongs_to_many :issues
  has_many :categories
  has_many :tags
  mount_uploader :article_feature, ArticleFeatureUploader
end
