actions :fetch

attribute :url, :kind_of => String, :required => true
attribute :dest, :kind_of => String, :required => true
attribute :overwrite, :default => false
attribute :owner, :kind_of => String
attribute :group, :kind_of => String

def initialize(*args)
  super
  @action = :fetch
end
