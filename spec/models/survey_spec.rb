require 'spec_helper'


describe 'survey' do

  it "should save survey to database" do
    survey = Survey.create(user_id: 1, title: "Test Survey", description: "test survey description")
  expect(Survey.find_by_title("Test Survey").description).to eq('test survey description')
end

  it "should hold questions with choices" do
    survey2 = Survey.create(user_id: 1, title: "SampleSurvey", description: "describe")
    question = Question.create(question_text: "Sample Question")
    choice1 = Choice.create(choice_text: "Sample choice1")
    choice2 = Choice.create(choice_text: "Sample choice2")
    question.choices << choice1
    question.choices << choice2
    survey2.questions << question

    expect(Survey.find_by_title("SampleSurvey").questions.first.choices.length).to eq(2)
    Survey.last.destroy
  end

  it "should hold questions with choices" do
    survey2 = Survey.create(user_id: 1, title: "SampleSurvey", description: "describe")
    question = Question.create(question_text: "Sample Question")
    choice1 = Choice.create(choice_text: "Sample choice1")
    choice2 = Choice.create(choice_text: "Sample choice2")
    question.choices << choice1
    question.choices << choice2
    survey2.questions << question

    expect(Survey.find_by_title("SampleSurvey").questions.first.choices.length).to eq(2)
    Survey.last.destroy
  end

  it "should build questions and hashes with params" do
      params = {"title" => "SampleSurvey", "description" =>"description", "question1" => "Samplequestion","question1choice1" =>"q1choice1", "question1choice2" => "q1choice2", "question1choice3" => "q1choice3"}
      
      test = Survey.create("title" => "SampleSurvey", "description" =>"description")
    test.build(params)        
    expect(test.questions.first.choices.length).to eq(3)
  end
  
end