require 'aba'
require 'tasks/generate'

namespace :generate_aba do
  include GenerateAbaFile
  desc "TODO"
  task task_1: :environment do
    puts "MOHAN"
    GenerateAbaFile.generate
  end
end
