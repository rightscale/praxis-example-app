# Low-level Sequel::Model for blogs

class Blog < Sequel::Model
  include Praxis::Mapper::SequelCompat

  plugin :serialization, :json

  serialize_attributes :json, :timestamps
  serialize_attributes :json, :tags

  many_to_one :owner, class: :User
  one_to_many :posts

  one_to_many :users, key: :primary_blog_id
end
