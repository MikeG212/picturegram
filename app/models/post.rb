class Post < ApplicationRecord
  validates :caption, :user_id, presence: true

  validate :ensure_photo
  
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, -> {order(:created_at => :desc)}, dependent: :destroy

  has_many :likers,
    through: :likes,
    source: :user
  
  has_one_attached :photo

  def ensure_photo
    unless self.photo.attached?
      errors[:photo] << "must be attached"
    end
  end
end