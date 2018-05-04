require 'rails_helper'

describe UsersController, type: :controller do
  let(:user) { User.create!(email: "patrick.krell@gmail.com", password: "test123") }
  let(:user2) { User.create!(email: "test@gmail.com", password: "test123") }

  describe 'GET #show' do
    context 'when a user is logged in' do
      before do 
        sign_in user
      end  

      it 'when a user is not logged in' do
        get :show, params: { id: user.id }
          expect(response).to be_ok
          expect(assigns(:user)).to eq user
      end

      it 'cannot access other users show page' do
        get :show, params: { id: user2.id }
        expect(response).to have_http_status(302)
        expect(response).to redirect_to(root_path)
      end
      
    end
  end
end  