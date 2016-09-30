#!/bin/sh

DEMO_TASK="
task :demo do
  with_server :development do
    IO.popen('rails server -b 0.0.0.0') do |io|
      begin
        io.each do |line|
          puts line
        end
      rescue Interrupt
        puts 'Stopping server'
      end
    end
  end
end"

echo "Creating CurationConcerns demo in ${HOME}/ldata"
cd
rails new ldata --skip-spring
cd ldata
echo "gem 'curation_concerns', '1.6.1'" >> Gemfile
bundle install --quiet
rails generate curation_concerns:install -f -q
rake db:migrate
echo "$DEMO_TASK" >> Rakefile
