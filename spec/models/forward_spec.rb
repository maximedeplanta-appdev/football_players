require 'rails_helper'

RSpec.describe Forward, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:forward) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do
      
    end
end
