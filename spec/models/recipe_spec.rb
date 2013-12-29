require 'spec_helper'

describe Recipe do
  it "should raise validation error when owner wasn't provided" do
    expect {
      create(:recipe, owner: nil)
    }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
