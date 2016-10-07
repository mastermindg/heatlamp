name 'heatlamp'
maintainer 'The Authors'
maintainer_email 'you@example.com'
license 'all_rights'
description 'Installs/Configures heatlamp'
long_description 'Installs/Configures heatlamp'
version '0.1.0'

supports 'centos', '> 6.0'

depends 'mysql', '8.0.4'
depends 'database', '6.0.0'
depends 'apache2', '3.2.2'
depends 'php', '2.1.1'

depends 'yum'
depends 'apt'

#Optional
depends 'ssl'