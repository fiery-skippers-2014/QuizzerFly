require 'spec_helper'

describe Survey do
  it { should belong_to(:user) }
  it { should have_many(:questions) }
  it { should have_many(:choices).through(:questions) }
end