actions :fetch
default_action :fetch

attribute :base_url, :kind_of => String, :required => true
attribute :archive_type, :kind_of => String, :default => 'gzip'
attribute :download_to, :kind_of => String, :default => Chef::Config[:file_cache_path]
attribute :extract, :default => true
attribute :extract_to, :kind_of => String
attribute :symlink, :default => true
attribute :symlink_to, :kind_of => String, :default => '/tmp/fetch'
