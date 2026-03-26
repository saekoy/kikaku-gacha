require 'rails_helper'

RSpec.describe Idea, type: :model do
  it 'タイトルと説明があれば有効であること' do
    idea = Idea.new(title: '歌枠', description: '100曲歌います！')
    expect(idea).to be_valid
  end

  it 'タイトルがなければ無効であること' do
    idea = Idea.new(title: nil, description: '100曲歌います！')
    expect(idea).not_to be_valid
  end

  it '説明がなければ無効であること' do
    idea = Idea.new(title: '歌枠', description: nil)
    expect(idea).not_to be_valid
  end
end
