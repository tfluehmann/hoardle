require 'spec_helper'

describe Link do
  it{should validate_presence_of(:link)}
  it{should have_and_belong_to_many(:tags)}
  it{should have_and_belong_to_many(:categories)}

end
