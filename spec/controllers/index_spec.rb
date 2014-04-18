require 'spec_helper'

describe "index page" do
  it "should invite you to take a survey" do
    route = "/"
    get route
    expect(last_response.body).to include("Why don't you try a survey?")
  end
end

describe "query on search page" do
  it "should query the database for users that match the query string" do
    route = "/search/*"
    params = { name: 'ravi'}
    get route, params
    expect(last_response.body).to include("ravi")
  end
end