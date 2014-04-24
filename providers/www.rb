use_inline_resources

action :fetch do
  # Sprinkle a bit of voodoo on it
  unless new_resource.base_url.split('').last == '/'
    url = new_resource.base_url + '/'
  else
    url = new_resource.base_url
  end

  # Fetch
  file = "#{new_resource.download_to}/#{new_resource.name}"
  remote_file file do
    source "#{url}/#{new_resource.name}"
    if new_resource.extract == true
      notifies :run, "execute[extracting #{new_resource.archive_type} archive -> #{new_resource.name}]", :immediately
    end
    not_if { ::File.exists?(file) }
  end

  # Extract
  case new_resource.archive_type
    when 'war'
      package 'unzip'

      execute "extracting #{new_resource.archive_type} archive -> #{new_resource.name}" do
        action :nothing
        command "unzip #{file} -d #{new_resource.extract_to}"
        only_if { new_resource.extract == true }
      end

      link new_resource.symlink_to do
        to new_resource.extract_to
        only_if { new_resource.symlink == true }
      end

    when 'gzip'
      execute "extracting #{new_resource.archive_type} archive -> #{new_resource.name}" do
        action :nothing
        command "tar xzvf #{file} -C #{new_resource.extract_to}"
        only_if { new_resource.extract == true }
      end

      link new_resource.symlink_to do
        to "#{new_resource.extract_to}/#{new_resource.name.gsub(/\.tar\.gz/, '')}"
        only_if { new_resource.symlink == true }
      end
  end

  #new_resource.updated_by_last_action(true)
end
