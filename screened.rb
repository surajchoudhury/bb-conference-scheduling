require_relative "talk"

module Screened
    TALKS = [
      Talk.new("Pryin open the black box", 60),
      Talk.new("Migrating a huge production codebase from sinatra to Rails", 45),
      Talk.new("How does bundler work", 30),
      Talk.new("Sustainable Open Source", 45),
      Talk.new("How to program with Accessiblity in Mind", 45),
      LightningTalk.new("Riding Rails for 10 years lightning talk"),
      Talk.new("Implementing a strong code review culture",60),
      Talk.new("Scaling Rails for Black Friday", 45 ),
      Talk.new("Docker isn't just for deployment", 30),
      Talk.new("Callbacks in Rails", 30),
      Talk.new("Microservices a bittersweet symphony",45),
      Talk.new("Teaching github for poets", 60),
      Talk.new("Test Driving your Rails Infrastucture with Chef", 60),
      Talk.new("SVG charts and graphics with Ruby", 45),
      Talk.new("Interviewing like a unicorn: How Great Teams Hire", 30),
      Talk.new("How to talk to humans: a different approach to soft skills", 30), 
      Talk.new("Getting a handle on Legacy Code", 60),
      Talk.new("Heroku: A year in review", 30),
      LightningTalk.new("Ansible : An alternative to chef lightning talk"),
      Talk.new("Ruby on Rails on Minitest", 30)
     ]
end

