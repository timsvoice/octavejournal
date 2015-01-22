class Article < ActiveRecord::Base
  belongs_to :issue
  belongs_to :author
  has_many :categories
  has_many :tags
end
