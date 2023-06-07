#in request spec

describe "PATCH /update" do
    it "update a mgame" do

      Mgame.create(
        name: 'Blue Archive',
        game_type: 'Tactical Role-Playing',
        summary: 'Blue Archive is a tactical role-playing game that allows the player to form and mobilize units of up to six members two \"Specials\" and four \"Strikers\" to participate in various military campaigns with. Students strengths can be enhanced in various ways, such as by increasing their levels, weapons, armor and skills.',
        img: 'https://media.tenor.com/Z6EFYrE_GJkAAAAd/blue-archive-arisu.gif'
      )

      # Make a request
      get '/mgames'

      test = Mgame.all
      p test[0]
      # The params we are going to send with the request
      # mgame_params = {
      #   mgame: {
      #     name: 'Blue',
      #     game_type: 'Tactical Role-Playing',
      #     file_size: '6.18 GB',
      #     summary: 'Blue Archive is a tactical role-playing game that allows the player to form and mobilize units of up to six members two \"Specials\" and four \"Strikers\" to participate in various military campaigns with. Students strengths can be enhanced in various ways, such as by increasing their levels, weapons, armor and skills.', 
      #     img: 'https://media.tenor.com/Z6EFYrE_GJkAAAAd/blue-archive-arisu.gif'
      #   }
      # }
  
      # # Send the request to the server
      # patch '/mgames/1', params: mgame_params
  
      # # Assure that we get a success back
      # expect(response).to have_http_status(200)

      # Assure that the created cat has the correct attributes
      # expect(mgame.first.name).to eq 'Blue'
    end
  

controller.rb

            mgame = Mgame.find(params[:id])
            mgame.update(mgame_params)
            render json: mgame