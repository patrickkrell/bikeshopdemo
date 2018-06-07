require 'rails_helper'

describe Product do

    context "when the product has comments" do
    
    let(:product) { Product.create!(name: "Downhill Bike", description: "Best Bike", colour: "red", price: "2000", image_url: "bike1.jpg") }
    let(:user) { User.create!(email: "patrick.krell@googlemail.com",first_name: "Patrick", last_name: "Krell", password: "test123") }

    before do
      product.comments.create!(rating: 1, user: user, body: "Awful bike!")
      product.comments.create!(rating: 3, user: user, body: "Ok bike!")
      product.comments.create!(rating: 5, user: user, body: "Great bike!")
    end

    it "returns the average rating of all comments" do
      expect(product.average_rating).to eq 3
    end

    it "is not valid without a name" do
      expect(Product.new(description: "Mega bike")).not_to be_valid
    end  
  
  end
end