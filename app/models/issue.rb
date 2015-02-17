class Issue < ActiveRecord::Base
  has_many :articles
  mount_uploader :issue_feature, IssueFeatureUploader
end
