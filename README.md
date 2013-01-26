fetch Cookbook
==============
This cookbook allows to fetch files served over HTTP/HTTPS using wget without having to add the logic each time in a recipe.

Usage
-----
    fetch_www 'foo' do
      url 'http://example.com/example.txt'
      dest '/tmp'
      owner 'nobody'
      group 'root'
      overwrite true
    end

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Jean-Francois Theroux <failshell@gmail.com>
License: Apache version 2
