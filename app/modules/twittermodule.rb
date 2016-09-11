require 'twitter'

# Twitter module that uses the twitter gem to interact with the twitter API
module TwitterUtility

    @@client = Twitter::REST::Client.new do |config|
        config.consumer_key        = ENV["TWITTER_CONSUMER_KEY"]
        config.consumer_secret     = ENV['TWITTER_CONSUMER_SECRET']
        config.access_token        = ENV['TWITTER_ACCESS_TOKEN']
        config.access_token_secret = ENV['TWITTER_ACCESS_TOKEN_SECRET']
    end


    # Retrieve all the tweets of a user
    def TwitterUtility.getPostsForUser(user)
        @@client.user_timeline(user)
    end

end
