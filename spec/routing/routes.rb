describe "Routes" do
  it "routes root (/) to list#index" do
    get(root_path).should route_to("list#index")
  end
end