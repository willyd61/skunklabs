require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe SuggestionStatesController do

  login_user
  before(:each) do
    @user.admin = true
    @user.save
  end

  describe "GET index" do
    it "assigns all suggestion_states as @suggestion_states" do
      suggestion_state = FactoryBot.create(:suggestion_state)
      get :index, {}
      expect(assigns(:suggestion_states)).to eq([suggestion_state])
    end
  end

  describe "GET show" do
    it "assigns the requested suggestion_state as @suggestion_state" do
      suggestion_state = FactoryBot.create(:suggestion_state)
      get :show, params: {:id => suggestion_state.to_param}
      expect(assigns(:suggestion_state)).to eq(suggestion_state)
    end
  end

  describe "GET new" do
    it "assigns a new suggestion_state as @suggestion_state" do
      get :new, {}
      expect(assigns(:suggestion_state)).to be_a_new(SuggestionState)
    end
  end

  describe "GET edit" do
    it "assigns the requested suggestion_state as @suggestion_state" do
      suggestion_state = FactoryBot.create(:suggestion_state)
      get :edit, params: {:id => suggestion_state.to_param}
      expect(assigns(:suggestion_state)).to eq(suggestion_state)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new SuggestionState" do
        expect {
          post :create, params: {:suggestion_state => FactoryBot.attributes_for(:suggestion_state)}
        }.to change(SuggestionState, :count).by(1)
      end

      it "assigns a newly created suggestion_state as @suggestion_state" do
        post :create, params: {:suggestion_state => FactoryBot.attributes_for(:suggestion_state)}
        expect(assigns(:suggestion_state)).to be_a(SuggestionState)
        expect(assigns(:suggestion_state)).to be_persisted
      end

      it "redirects to the created suggestion_state" do
        post :create, params: {:suggestion_state => FactoryBot.attributes_for(:suggestion_state)}
        expect(response).to redirect_to(SuggestionState.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved suggestion_state as @suggestion_state" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(SuggestionState).to receive(:save).and_return(false)
        post :create, params: {:suggestion_state => { "name" => "" }}
        expect(assigns(:suggestion_state)).to be_a_new(SuggestionState)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(SuggestionState).to receive(:save).and_return(false)
        post :create, params: {:suggestion_state => { "name" => "" }}
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    before(:each) { @suggestion_state = FactoryBot.create(:suggestion_state) }

    describe "with valid params" do
      it "updates the requested suggestion_state" do
        # Assuming there are no other suggestion_states in the database, this
        # specifies that the SuggestionState created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        allow_any_instance_of(SuggestionState).to receive(:update).with({ "name" => "MyString" })
        put :update, params: {:id => @suggestion_state.to_param, :suggestion_state => { "name" => "MyString" }}
      end

      it "assigns the requested suggestion_state as @suggestion_state" do
        put :update, params: {:id => @suggestion_state.to_param, :suggestion_state => FactoryBot.attributes_for(:suggestion_state)}
        expect(assigns(:suggestion_state)).to eq(@suggestion_state)
      end

      it "redirects to the suggestion_state" do
        put :update, params: {:id => @suggestion_state.to_param, :suggestion_state => FactoryBot.attributes_for(:suggestion_state)}
        expect(response).to redirect_to(@suggestion_state)
      end
    end

    describe "with invalid params" do
      it "assigns the suggestion_state as @suggestion_state" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(SuggestionState).to receive(:save).and_return(false)
        put :update, params: {:id => @suggestion_state.to_param, :suggestion_state => { "name" => "" }}
        expect(assigns(:suggestion_state)).to eq(@suggestion_state)
      end

      it "re-renders the 'edit' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        allow_any_instance_of(SuggestionState).to receive(:save).and_return(false)
        put :update, params: {:id => @suggestion_state.to_param, :suggestion_state => { "name" => "" }}
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    before(:each) { @suggestion_state = FactoryBot.create(:suggestion_state) }

    it "destroys the requested suggestion_state" do
      expect {
        delete :destroy, params: {:id => @suggestion_state.to_param}
      }.to change(SuggestionState, :count).by(-1)
    end

    it "redirects to the suggestion_states list" do
      delete :destroy, params: {:id => @suggestion_state.to_param}
      expect(response).to redirect_to(suggestion_states_url)
    end
  end

end
