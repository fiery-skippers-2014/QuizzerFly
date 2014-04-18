require 'spec_helper'

describe Choice do
  it { should belong_to(:question) }
  it { should have_one(:survey).through(:question)}
end