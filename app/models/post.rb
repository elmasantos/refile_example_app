class Post
  extend Refile::Attachment
  include ActiveModel::Model

  attr_accessor :documents

  accepts_attachments_for(
    :documents,
    accessor_prefix: 'documents_files',
    collection_class: Document
  )

  def initialize(attributes = {})
    @documents = attributes[:documents] || []
  end

  def errors
    @errors = {}
  end

  def persisted?
    false
  end
end