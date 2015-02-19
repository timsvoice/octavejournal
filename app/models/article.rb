class Article < ActiveRecord::Base
  has_and_belongs_to_many :issues
  belongs_to :author
  has_many :categories
  has_many :tags
  mount_uploader :article_feature, ArticleFeatureUploader
end
