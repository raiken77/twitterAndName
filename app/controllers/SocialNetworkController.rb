class SocialNetworkController < RootApp
    ROOT_NODE = "24"


    # Uses the twitter module to retrieve the tweets from a specified user(not retweets) and
    # returns a JSON object with the number of tweets per hour of today 
    get '/:user' do |user|
        today = Time.now.day
        per_hour_posts = Hash[ROOT_NODE,{}]
        25.times do |number|
            per_hour_posts[ROOT_NODE][number] = 0
        end
        tweets = TwitterUtility.getPostsForUser(user)
        halt 404 , "NOT FOUND" if tweets.nil?

        tweets.each do |tweet|
            if tweet.created_at.day === today && !tweet.retweeted?
                per_hour_posts[ROOT_NODE][tweet.created_at.hour] +=1
            end
        end

        content_type :json
        per_hour_posts.to_json
    end
end
