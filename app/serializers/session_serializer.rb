class SessionSerializer < ActiveModel::Serializer
  attributes :id, :email, :token

  def token
    self.object.auth_token
  end
end
