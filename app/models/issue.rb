class Issue < ActiveRecord::Base
  translates :title, :introduction, :summary
  has_and_belongs_to_many :articles
  mount_uploader :issue_feature, IssueFeatureUploader
end
