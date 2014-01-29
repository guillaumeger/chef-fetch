## Fetch
This cookbook was written primarily to automate several steps I often have to do in recipes:

+ Fetch a tarball
+ Extract it somewhere
+ Symlink it elsewhere

All these steps are wrapped in a neat LWRP.

## Supports
For now, only gzip tarballs are supported, but it'd be easy to implement other formats
like bzip2, xz, zip, etc.

It's also possible to fetch only a file without extracting it or symlinking it.

## Usage
~~~ text
fetch_www 'smokeping-2.6.9.tar.gz' do
  base_url 'http://oss.oetiker.ch/smokeping/pub'
  extract_to '/usr/share'
  symlink_to '/usr/share/smokeping'
end
~~~

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
