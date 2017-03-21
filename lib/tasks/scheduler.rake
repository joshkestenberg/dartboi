desc "This task is called by the Heroku scheduler add-on"
task :update_shows do
  Show.perform
  Contact.perform
end
