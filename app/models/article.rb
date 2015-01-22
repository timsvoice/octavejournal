class Article < ActiveRecord::Base
  belongs_to :issue
  belongs_to :author
  has_many :categories
  has_many :tags
  mount_uploader :article_feature, ArticleFeatureUploader
end
