Project dependencies:
1) If you don't have ruby installed on your machine, head over to https://www.ruby-lang.org/en/documentation/installation/ to install ruby.

2) Once ruby installed, open your command line and install bundler globally using gem install bundler.

3) From the command line go to the root project directory that you cloned and run bundle install. Note however that sometimes bundler will require root access on MAC to install some dependencies and thus you will need to use sudo bundle install.

4) This application uses twitter api so you need a twitter account. Once the account created, go to https://apps.twitter.com/ to create your app. Copy and paste the consumer key, consumer secret, access token and access token secret in the appropriate fields in the file called development.rb located in the "env" folder of the project directory.

5) Now you can run the application using the command "rackup" from the command line. Visit http://localhost:9292 and you should see the message "Try /hello/:name" 


Test:
To run the tests, run "bundle exec rake" from the command line and it should execute the tests.