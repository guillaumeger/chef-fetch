def initialize(*args)
  super
  @action = :fetch
end

action :fetch do
  execute "fetch_www_file" do
    # To make our life easier, we don't care if the certificate is not ok
    command "wget -N --no-check-certificate #{new_resource.url} -P #{new_resource.dest}"
    unless new_resource.overwrite == true
      creates "#{new_resource.dest}/#{IO::File.basename(new_resource.url)}"
    end
  end

  file "#{new_resource.dest}/#{IO::File.basename(new_resource.url)}" do
    if new_resource.owner
      owner new_resource.owner
    end
    if new_resource.group
      group new_resource.group
    end
  end
end
