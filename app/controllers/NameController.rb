class NameController < RootApp
    get "/" do
        "Try /hello/:name"
    end

    # Gets the name param from the url. If it contains numbers reject it otherwise put Hello #{param} in the browser
    get "/hello/:name" do |name|
        if name =~ /\d/
            halt 400, 'BAD REQUEST'
        end

        "Hello #{name}"
    end
end
