require 'spec_helper'

describe User do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password_hash) }

  it { should have_many(:surveys) }
  it { should have_many(:results) }
  it { should have_many(:completed_surveys) }

  it { should ensure_length_of(:password_hash).is_at_least(6) }

  it { should validate_uniqueness_of(:email) }

  it { should allow_value('this@this.com').for(:email) }
  it { should_not allow_value('notanemail').for(:email) }
end