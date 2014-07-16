require 'rails_helper'
require 'pry'
RSpec.describe Utterance, :type => :model do
  context "Wav post processing" do
    it "should trim silences" do
      ut = Utterance.new
      ut.wav = File.new("spec/examples/si.wav")
      ut.save!

      expect(File.exists? ut.wav.path).to be(true)
    end
  end
end
