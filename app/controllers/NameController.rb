class NameController < RootApp
  get "/" do
    "Try /hello/:name"
  end

  get "/hello/:name" do |name|
    if name =~ /\d/
      halt 400, 'BAD REQUEST'
    end
    
     "Hello #{name}"
  end
end
