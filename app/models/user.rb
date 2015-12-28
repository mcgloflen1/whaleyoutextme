class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_many :posts
  has_many :notifications

  after_create :send_mail

  after_create :new_user_notification

  def send_mail
    UserMailer.say_hello(self).deliver_now
  end

  def new_user_notification
    Notification.create(user_id: self.id, subject: "Welcome!", body: "You're cool.")
  end

end
