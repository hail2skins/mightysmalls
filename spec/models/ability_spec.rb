require "spec_helper"
require "cancan/matchers"

describe "Ability" do
  describe "owners" do
    subject(:ability){ Ability.new(owner) }
    let(:owner){ nil }

    context "when owner is guest" do
      it{ should be_able_to(:read, :static_pages)}

      it{ should be_able_to(:manage, Owner.new) }
    end
  end
end