require 'spec_helper'

describe Tag do
  it {should validate_presence_of(:name)}
  it {should have_and_belong_to_many(:categories)}
  it {should have_and_belong_to_many(:links)}
  it {should validate_uniqueness_of(:name)}
end
