require 'spec_helper'

describe Tag, type: :model do
  it {expect(subject).to validate_presence_of(:name)}
  it {expect(subject).to  have_and_belong_to_many(:categories)}
  it {expect(subject).to  have_and_belong_to_many(:links)}
  it {expect(subject).to  validate_uniqueness_of(:name)}
end
