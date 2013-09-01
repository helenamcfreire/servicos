class User < ActiveRecord::Base

  has_many :avaliacaos

  attr_accessible :name, :email, :access_token, :uid, :photo_url, :provider


  def self.find_or_create_with_omniauth(auth)
    user = self.find_or_create_by_provider_and_uid(auth.provider, auth.uid)
    user.assign_attributes({ name: auth.info.name, email: auth.info.email, photo_url: auth.info.image, access_token: auth.credentials.token })
    user.save!
    user
  end

end
