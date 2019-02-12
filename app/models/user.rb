class User < ApplicationRecord

  def self.create_with_omniauth(auth)
    create! do |user|
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
    end
  end

  def self.find_by_uid(id_from_auth)
    find_by(uid: id_from_auth)
  end

end
