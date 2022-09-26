    require 'rails_helper'

    RSpec.describe LocationFacade do 
      it 'returns lat/long coordinates based on search param of city,state' do 

        search = "south plainfield, nj"
        location = LocationFacade.find_location(search)
        
        expect(location).to be_a(Array)
        expect(location.count).to eq(2)
        expect(location.first).to be_a(Float)
        expect(location.first).to eq(40.584157)
        expect(location.last).to eq(-74.415544)
      end
      
      it "returns the closest matching result based on search" do 
        
        search = "adfsdj"
        location = LocationFacade.find_location(search)
        # require 'pry'; binding.pry 

        expect(location).to be_a(Array)
        expect(location.count).to eq(2)
        expect(location.first).to be_a(Float)
      end
    end