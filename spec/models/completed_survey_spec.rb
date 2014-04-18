require 'spec_helper'

describe CompletedSurvey do
  it { should belong_to(:user) }
  it { should belong_to(:survey) }
end