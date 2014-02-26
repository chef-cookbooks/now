# This gets evalutated in the recipe compilation phase
fail 'was not there' unless ::File.exists?('/tmp/an_thing')
