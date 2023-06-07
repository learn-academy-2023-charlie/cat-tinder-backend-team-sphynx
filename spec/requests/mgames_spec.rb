require 'rails_helper'

RSpec.describe "Mgames", type: :request do
  describe "GET /index" do
    it "gets a list of mobile games" do
      Mgame.create(
        name: 'Blue Archive',
        game_type: 'Tactical Role-Playing',
        summary: 'Blue Archive is a tactical role-playing game that allows the player to form and mobilize units of up to six members two \"Specials\" and four \"Strikers\" to participate in various military campaigns with. Students strengths can be enhanced in various ways, such as by increasing their levels, weapons, armor and skills.',
        img: 'https://media.tenor.com/Z6EFYrE_GJkAAAAd/blue-archive-arisu.gif'
      )

      # Make a request
      get '/mgames'

      mgame = JSON.parse(response.body)
      expect(response).to have_http_status(200)
      expect(mgame.length).to eq 1
    end

  end

  describe "POST /create" do
    it "creates a mgame" do
      # The params we are going to send with the request
      mgame_params = {
        mgame: {
          name: 'Blue archive',
          game_type: 'Tactical Role-Playing',
          summary: 'Blue Archive is a tactical role-playing game that allows the player to form and mobilize units of up to six members two \"Specials\" and four \"Strikers\" to participate in various military campaigns with. Students strengths can be enhanced in various ways, such as by increasing their levels, weapons, armor and skills.',
          img: 'https://media.tenor.com/Z6EFYrE_GJkAAAAd/blue-archive-arisu.gif',
        }
      }
  
      # Send the request to the server
      post '/mgames', params: mgame_params
  
      # Assure that we get a success back
      expect(response).to have_http_status(200)
  
      # Look up the cat we expect to be created in the db
      mgame = Mgame.first
  
      # Assure that the created cat has the correct attributes
      expect(mgame.name).to eq 'Blue archive'
    end
  end

  

end