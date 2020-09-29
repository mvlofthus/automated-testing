require_relative 'test_helper'

describe Deck do
  # Write tests for the Deck class.
  # What should you test?
    # 1.  Expected Behavior
    # 2.  Edge cases
  before do
    @deck = Deck.new
  end

  describe "constructor" do

    it "can be instantiated" do
      expect(@deck).must_be_instance_of Deck
    end


    describe "draw method" do
      it "must respond to draw method" do
        expect(@deck).must_respond_to :draw
      end

      it "returns a Card" do
        expect(@deck.draw).must_be_instance_of Card
      end

      it "will let me draw 52 cards from an initial deck" do
        52.times do
          expect(@deck.draw).must_be_instance_of Card
        end
      end

      it "will return nil" do #would be the place for a custom error
      52.times do
        expect(@deck.draw).must_be_instance_of Card
      end

      expect(@deck.draw).must_be_nil
      end

    end

    describe "shuffle method" do

      it "responds to shuffle" do
        expect(@deck).must_respond_to :shuffle
      end

    end



  end

end

