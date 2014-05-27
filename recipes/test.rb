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

fetch_www 'nexus-2.8.0.war' do
  base_url 'http://www.sonatype.org/downloads/'
  archive_type 'war'
  extract_to '/tmp/nexus'
  symlink_to '/tmp/nexus-test'
  notifies :restart, 'service[rsyslog]'
end

fetch_www 'ssoAdminTools_10.0.0.zip' do
  base_url 'http://download.forgerock.org/downloads/openam/openam10/10.0.0/'
  archive_type 'zip'
  extract_to '/tmp/ssoadmin'
  symlink_to '/tmp/ssoadmin-test'
end

fetch_www 'graylog2-server-0.20.0.tgz' do
  base_url 'https://github.com/Graylog2/graylog2-server/releases/download/0.20.0'
  extract_to '/opt'
  symlink_to '/opt/graylog2'
end

# Bogus service to notify
service 'rsyslog'
