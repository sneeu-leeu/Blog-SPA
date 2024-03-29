require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:each) do
      get users_path
    end

    it 'should have the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'displays the correct template' do
      expect(response).to render_template(:index)
    end

    it 'has the correct placeholder text' do
      expect(response.body).to include('This is the users view and their amount of posts')
    end
  end

  describe 'GET #show' do
    before(:each) do
      get user_path(745)
    end

    it 'should have the correct response status' do
      expect(response).to have_http_status(:ok)
    end

    it 'displays the correct template' do
      expect(response).to render_template(:show)
    end

    it 'displays the correct placeholder text' do
      expect(response.body).to include('This is the description of a user')
    end
  end
end
