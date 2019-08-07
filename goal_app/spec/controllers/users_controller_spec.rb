require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  let (:user_params) do
    { user: {
        username: 'username000',
        password: 'password123'
      }
    }
  end

  let (:user_params_incorrect) do
    { user: {
        username: 'username000',
        password: ''
      }
    }
  end

  describe 'GET #index' do
    it 'renders the index template showing all user' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do
    it 'renders the show template for current user' do
      user = User.create(username: user_params[:user][:username],
        password: user_params[:user][:password])
      get :show, params: {id: user.id}
      expect(response).to render_template(:show)
    end
  end

  describe 'GET #edit' do
    it 'renders the edit template for current user' do
      user = User.create(username: user_params[:user][:username],
        password: user_params[:user][:password])
      get :edit, params: {id: user.id}
      expect(response).to render_template(:edit)
    end
  end

  describe 'PATCH #update' do
    context 'with valid params' do
      it 'redirect to the show page when user enters params which result in a successful update'
      end
  
    end

  end


end
