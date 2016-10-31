
name 'aws'
maintainer 'Mejuri, Inc.'
maintainer_email 'nico@mejuri.com'
license 'Apache 2.0'
description 'Custom resources for managing AWS resources'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'

recipe 'aws', 'Nginx and Unicorn setup'
recipe 'ec2_hints', 'Nginx and Unicorn setup'

source_url 'https://github.com/domecq/mejuri-aws-cookbooks'
issues_url 'https://github.com/domecq/mejuri-aws-cookbooks/issues'
