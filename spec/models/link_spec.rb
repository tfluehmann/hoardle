require 'spec_helper'

describe Link, type: :model do
  it{expect(subject).to  validate_presence_of(:link)}
  it{expect(subject).to  have_and_belong_to_many(:tags)}
  it{expect(subject).to  have_and_belong_to_many(:categories)}

end
