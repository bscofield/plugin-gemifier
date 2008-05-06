# Look in the tasks/setup.rb file for the various options that can be
# configured in this Rakefile. The .rake files in the tasks directory
# are where the options are used.

load 'tasks/setup.rb'

ensure_in_path 'lib'
require 'plugin_gemifier'

task :default => 'test:run'

PROJ.name = 'plugin_gemifier'
PROJ.authors = 'Ben Scofield of Viget Labs'
PROJ.email = 'ben.scofield@viget.com'
PROJ.url = 'https://github.com/bscofield/plugin-gemifier/tree/master'
PROJ.rubyforge.name = ''

PROJ.spec.opts << '--color'

# EOF
