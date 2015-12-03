require 'spec_helper'

describe Project do
  describe "Business instance methods" do
    let(:subject) { build(:project) }
    describe '#consumed_in_days' do
      it { subject.consumed_in_days.should == 30 }
    end

    describe '#total_of_days' do
      it { subject.total_of_days.should == 60 }
    end

    describe '#consumed_time_rate' do
      it { subject.consumed_time_rate.should == 50 }
    end

    describe '#progress_success?' do
      it { subject.progress_success?.should be_false }
    end

    describe '#progress_warning?' do
      it { subject.progress_warning?.should be_true }
    end

    describe '#progress_danger?' do
      it { subject.progress_danger?.should be_false }
    end
  end
end
