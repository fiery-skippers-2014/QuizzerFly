require 'spec_helper'

describe 'survey saves to database' do
  it "can save survey to database" do

	survey = Survey.create(user_id: 1, title: "Test Survey", description: "test survey description")
 
	expect(Survey.find_by_title("Test Survey").description).to eq('test survey description')
	end
	# Survey.find_by_title("Test Survey").destroy
end
