require 'rails_helper'

RSpec.describe Position, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:players) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
