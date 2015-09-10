# This gets evalutated in the recipe compilation phase
fail 'was not there' unless ::File.exist?('/tmp/an_thing')
