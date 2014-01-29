#
# Cookbook Name:: fetch
# Recipe:: test
#
# Copyright 2014, Jean-Francois Theroux
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

fetch_www 'smokeping-2.6.9.tar.gz' do
  base_url 'http://oss.oetiker.ch/smokeping/pub'
  extract_to '/usr/share'
  symlink_to '/usr/share/smokeping'
end
