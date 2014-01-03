require 'spec_helper'

describe User do
  describe ".admin?" do
    context "when user is admin" do
      before(:each) do
        @user = User.new role: "admin"
      end

      it { expect(@user.admin?).to be_true }
    end

    context "when user is not admin" do
      before(:each) do
        @user = User.new 
      end

      it { expect(@user.admin?).to be_false }
    end
  end

  describe ".member?" do
    context "when user is a member" do
      before(:each) do
        @user = User.new 
      end

      it { expect(@user.member?).to be_true }
    end

    context "when user is not a member" do
      before(:each) do
        @user = User.new role: "admin"
      end

      it { expect(@user.member?).to be_false }
    end
  end
end
