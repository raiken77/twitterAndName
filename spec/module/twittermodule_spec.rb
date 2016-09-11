require_relative File.join('..', 'spec_helper')
RSpec.describe TwitterUtility do


    def app
        TwitterUtility
    end

    describe "Testing twitter module" do
      it "basic fetch" do
        tweets  = TwitterUtility.getPostsForUser("dhh")
        expect(tweets).not_to be_empty
      end

      it "null fetch" do
        tweets = TwitterUtility.getPostsForUser(nil)
        expect(tweets).to be_empty
      end
    end
end
