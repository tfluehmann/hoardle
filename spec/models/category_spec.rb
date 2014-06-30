require 'spec_helper'

describe Category, type: :model do
  it {expect(subject).to  validate_presence_of(:name)}
  it {expect(subject).to  validate_presence_of(:user)}
  it{expect(subject).to  have_and_belong_to_many(:tags)}
  it{expect(subject).to  have_and_belong_to_many(:links)}

end
