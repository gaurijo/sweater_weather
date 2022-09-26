    require 'rails_helper'

    RSpec.describe LocationFacade do 
      it 'returns lat/long coordinates based on search param of city,state' do 
        
        search = "denver, co"
        location = LocationFacade.find_location(search)

        search_2 = "south plainfield, nj"
        location2 = LocationFacade.find_location(search_2)
        
        expect(location).to be_a(Array)
        expect(location.count).to eq(2)
        expect(location.first).to be_a(Float)
        expect(location.first).to eq(39.738453)
        expect(location.last).to eq(-104.984853)
        expect(location).to_not eq(location2)
      end
      
      it "returns the closest matching result based on search" do 
        
        search = "adfsdj"
        location = LocationFacade.find_location(search)
        # require 'pry'; binding.pry 

        expect(location).to be_a(Array)
      end
    end