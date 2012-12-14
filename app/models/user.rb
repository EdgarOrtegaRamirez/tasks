class User < ActiveRecord::Base
  has_many :lists
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  
  attr_accessible :email, :password, :password_confirmation, :remember_me,
          :provider, :uid, :full_name

  def self.find_for_facebook_oauth(auth, signed_in_resource = nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    unless user
      user = User.create(full_name: auth.extra.raw_info.name,
                          provider: auth.provider,
                          uid: auth.uid,
                          email: auth.info.email,
                          password: Devise.friendly_token[0,20]
                        )
    end
    user
  end

end
