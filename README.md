## Fetch
This cookbook was written primarily to automate several steps I often have to do in recipes:

+ Fetch some archive
+ Extract it somewhere
+ Symlink it elsewhere

All these steps are wrapped in a neat LWRP.

## Supports

Possible ```archive_type```:
- gzip (tar.gz)
- war
- zip

It's also possible to fetch only a file without extracting it or symlinking it.

## Usage
~~~ text
fetch_www 'smokeping-2.6.9.tar.gz' do
  base_url 'http://oss.oetiker.ch/smokeping/pub'
  extract_to '/usr/share'
  symlink_to '/usr/share/smokeping'
end
~~~

~~~ text
fetch_www 'nexus-2.8.0.war' do
  base_url 'http://www.sonatype.org/downloads/'
  archive_type 'war'
  extract_to '/tmp/nexus'
  symlink_to '/tmp/nexus-test'
end
~~~

~~~ text
fetch_www 'ssoAdminTools_10.0.0.zip' do
  base_url 'http://download.forgerock.org/downloads/openam/openam10/10.0.0/'
  archive_type 'zip'
  extract_to '/tmp/ssoadmin'
  symlink_to '/tmp/ssoadmin-test'
end
~~~

## LWRP options

+ ```base_url```: where to get the archive file
+ ```archive_type```: gzip or war
+ ```download_to```: By default, to Chef's temp download directory. Can be changed to wherever.
+ ```extract```: defaults to ```true```
+ ```extract_to```: where to unpack the archive
+ ```symlink```: defaults to ```true```
+ ```symlink_to```: where to symlink it

## Contributing
1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

## License and Authors
Authors: Jean-Francois Theroux <me@failshell.io>

License: Apache version 2
