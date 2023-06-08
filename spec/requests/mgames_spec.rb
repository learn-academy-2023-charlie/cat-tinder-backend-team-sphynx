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
    end
  end

  describe "POST /create" do

    it "creates a mgame" do
    # The params we are going to send with the request
      mgame_params = {
        mgame: {
          name: 'Blue archive',
          game_type: 'Tactical Role-Playing',
          file_size:'10gb',
          summary: 'Blue Archive is a tactical role-playing game that allows the player to form and mobilize units of up to six members two \"Specials\" and four \"Strikers\" to participate in various military campaigns with. Students strengths can be enhanced in various ways, such as by increasing their levels, weapons, armor and skills.',
          img: 'https://media.tenor.com/Z6EFYrE_GJkAAAAd/blue-archive-arisu.gif',
        }
      }

      # Send the request to the server
      post '/mgames', params: mgame_params

      # Assure that we get a success back
      expect(response).to have_http_status(200)

      # Look up the cat we expect to be created in the db
      mgame= Mgame.first

      # Assure that the created cat has the correct attributes
      expect(mgame.name).to eq 'Blue archive'
    end

    it "doesn't create a mgame without a name" do
      mgame_params = {
        mgame: {
          game_type: '222',
          file_size: '12345',
          summary: 'testing sum',
          img: 'test'
        }
      }
      # Send the request to the  server
      post '/mgames', params: mgame_params
      # expect an error if the cat_params does not have a name
      expect(response.status).to eq 422
      # Convert the JSON response into a Ruby Hash
      json = JSON.parse(response.body)
      # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
      expect(json['name']).to include "can't be blank"
    end

    it "doesn't create a mgame without a game type" do
      mgame_params = {
        mgame: {
          name: '111',
          file_size: '12345',
          summary: 'testing sum',
          img: 'test'
        }
      }
      # Send the request to the  server
      post '/mgames', params: mgame_params
      # expect an error if the cat_params does not have a name
      expect(response.status).to eq 422
      # Convert the JSON response into a Ruby Hash
      json = JSON.parse(response.body)
      # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
      expect(json['game_type']).to include "can't be blank"
    end

    it "doesn't create a mgame without a file size" do
      mgame_params = {
        mgame: {
          name: '111',
          game_type: '12345',
          summary: 'testing sum',
          img: 'test'
        }
      }
      # Send the request to the  server
      post '/mgames', params: mgame_params
      # expect an error if the cat_params does not have a name
      expect(response.status).to eq 422
      # Convert the JSON response into a Ruby Hash
      json = JSON.parse(response.body)
      # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
      expect(json['file_size']).to include "can't be blank"
    end

    it "doesn't create a mgame without a summary" do
      mgame_params = {
        mgame: {
          name: '111',
          game_type: '12345',
          file_size: '22mb',
          img: 'test'
        }
      }
      # Send the request to the  server
      post '/mgames', params: mgame_params
      # expect an error if the cat_params does not have a name
      expect(response.status).to eq 422
      # Convert the JSON response into a Ruby Hash
      json = JSON.parse(response.body)
      # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
      expect(json['summary']).to include "can't be blank"
    end

    it "doesn't create a mgame without a summary" do
      mgame_params = {
        mgame: {
          name: '111',
          game_type: '12345',
          file_size: '22mb',
          summary: 'test'
        }
      }
      # Send the request to the  server
      post '/mgames', params: mgame_params
      # expect an error if the cat_params does not have a name
      expect(response.status).to eq 422
      # Convert the JSON response into a Ruby Hash
      json = JSON.parse(response.body)
      # Errors are returned as an array because there could be more than one, if there are more than one validation failures on an attribute.
      expect(json['img']).to include "can't be blank"
    end

  end

end