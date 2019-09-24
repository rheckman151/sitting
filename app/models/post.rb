class Post < ApplicationRecord
  belongs_to :client
  after_create :send_post_email



  def send_post_email
    NotificationMailer.reference_added(self).deliver_now
  end
end
