require 'spec_helper'

describe Link do
  it{should validate_presence_of(:link)}
  it{should validate_presence_of(:category)}
end
