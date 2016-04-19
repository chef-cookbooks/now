# This gets evalutated in the recipe compilation phase
raise 'was not there' unless ::File.exist?('/tmp/an_thing')
