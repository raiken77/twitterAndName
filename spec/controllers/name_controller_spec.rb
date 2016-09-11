require_relative File.join('..', 'spec_helper')

RSpec.describe NameController do
    def app
        NameController
    end

    describe "Testing normal url" do
        it "returns welcome message" do
            get '/'
            expect(last_response.body).to include("Try /hello/:name")
        end
    end


    describe "Testing name" do
        context "Error codes" do
            it "checks 200" do
                get'/hello/jonathan'
                expect(last_response.status).to eq 200
            end

            it "checks 404" do
                get '/hello/johm12'
                expect(last_response.status).to eq 400
            end
        end

        context "Different Names" do
            it "checks normal name" do
                get '/hello/jonathan'
                expect(last_response.body).to include("Hello jonathan")
            end

            it "checks name with space" do
                get '/hello/patrice%20jonathan'
                expect(last_response.body).to include("Hello patrice jonathan")
            end

            it "checks for capital letters" do
                get '/hello/Patrice'
                expect(last_response.body).to include("Patrice")
            end

            it "checks for numbers" do
                get '/hello/123'
                expect(last_response.body).to include("BAD REQUEST")
            end

            it "checks for alphanumeric names" do
                get '/hello/pat123'
                expect(last_response.body).to include("BAD REQUEST")
            end


        end
    end


end
