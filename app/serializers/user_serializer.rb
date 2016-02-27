class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :shops

  def shops
    self.object.roles.collect(&:resource)
  end

end
