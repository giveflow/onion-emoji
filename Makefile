onion:
	find . -type file | grep "onion-" | ruby onion.rb > onion.yml
