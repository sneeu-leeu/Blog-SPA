require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET #index' do
    before(:each) do
      get user_posts_path(745)
    end

    it 'should have the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'displays the correct template' do
      expect(response).to render_template(:index)
    end

    it 'has the correct placeholder text' do
      expect(response.body).to include('This is where the posts are listed')
    end
  end

  describe 'GET #show' do
    before(:each) do
      get user_post_path(745, 3)
    end

    it 'should have the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'displays the correct template' do
      expect(response).to render_template(:show)
    end

    it 'displays the correct placeholder text' do
      expect(response.body).to include('This is the details of posts per user')
    end
  end
end
