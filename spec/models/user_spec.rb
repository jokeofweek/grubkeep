require 'spec_helper'

describe User do
  context "for new valid user" do
    let(:user) { create(:user) }

    it "should have an empty list of recipes" do
      user.recipes.should be_empty
    end
  end
end