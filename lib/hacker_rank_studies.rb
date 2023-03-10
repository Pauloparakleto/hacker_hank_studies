# frozen_string_literal: true

require_relative 'hacker_rank_studies/version'
Dir["#{File.dirname(__FILE__)}/hacker_rank_studies/**/*.rb"].each {|file| require file }

module HackerRankStudies
  class Error < StandardError; end
  # Your code goes here...
end
