require 'rails_helper'

RSpec.describe User, :type => :model do
  it { should have_many(:posts) }
  it { should validate_presence_of(:name)}
  it { should validate_presence_of(:about_me)}
end
