.PHONY: all test

all:
	ruby all.rb

test:
	bundle exec rspec **/*_spec.rb
