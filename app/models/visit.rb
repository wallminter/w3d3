class Visit < ActiveRecord::Base
  validates :visitor_id, presence: true
  validates :url_id, presence: true

  belongs_to(
    :visitor,
    class_name: "User",
    foreign_key: :visitor_id,
    primary_key: :id
  )

  belongs_to(
    :url,
    class_name: "ShortenedUrl",
    foreign_key: :url_id,
    primary_key: :id
  )

  def self.record_visit!(user, shortened_url)
    Visit.create!(visitor_id: user.id, url_id: shortened_url.id)
  end

end
