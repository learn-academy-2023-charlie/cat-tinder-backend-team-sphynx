require 'rails_helper'

RSpec.describe Mgame, type: :model do

  it "should validate name" do
    mgame = Mgame.create
    expect(mgame.errors[:name]).to_not be_empty
  end

  it "should validate game type" do
    mgame = Mgame.create
    expect(mgame.errors[:game_type]).to_not be_empty
  end

  it "should validate file size" do
    mgame = Mgame.create
    expect(mgame.errors[:file_size]).to_not be_empty
  end

  it "should validate summary" do
    mgame = Mgame.create
    expect(mgame.errors[:summary]).to_not be_empty
  end

  it 'is not valid if summary is less than 10 characters' do
    mgame = Mgame.create name: 'test1', game_type: 'test type', file_size: '1mb', summary: 'fail sum', img:'testimg'
    expect(mgame.errors[:summary]).to_not be_empty
  end

  it "should validate img" do
    mgame = Mgame.create
    expect(mgame.errors[:img]).to_not be_empty
  end

end
