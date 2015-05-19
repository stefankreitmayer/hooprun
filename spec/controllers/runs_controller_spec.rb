require 'rails_helper'

RSpec.describe RunsController, type: :controller do
  let(:valid_attributes) {
  }

  let(:invalid_attributes) {
  }

  let(:valid_session) { {} }

  describe "GET #show" do
    it "assigns the requested run as @run" do
      run = Run.create! valid_attributes
      get :show, {:id => run.to_param}, valid_session
      expect(assigns(:run)).to eq(run)
    end
  end

  describe "GET #new" do
    it "assigns a new run as @run" do
      get :new, {}, valid_session
      expect(assigns(:run)).to be_a_new(Run)
    end
    it "renders the 'new' template" do
      get :new, {}, valid_session
      expect(response).to render_template("new")
    end
  end

  describe "GET #edit" do
    it "assigns the requested run as @run" do
      run = Run.create! valid_attributes
      get :edit, {:id => run.to_param}, valid_session
      expect(assigns(:run)).to eq(run)
    end
  end

  describe "POST #create" do
    context "with valid params" do
      it "creates a new Run" do
        expect {
          post :create, {:run => valid_attributes}, valid_session
        }.to change(Run, :count).by(1)
      end

      it "assigns a newly created run as @run" do
        post :create, {:run => valid_attributes}, valid_session
        expect(assigns(:run)).to be_a(Run)
        expect(assigns(:run)).to be_persisted
      end

      it "redirects to the created run" do
        post :create, {:run => valid_attributes}, valid_session
        expect(response).to redirect_to(Run.last)
      end
    end

    context "with invalid params" do
      it "assigns a newly created but unsaved run as @run" do
        post :create, {:run => invalid_attributes}, valid_session
        expect(assigns(:run)).to be_a_new(Run)
      end

      it "re-renders the 'new' template" do
        post :create, {:run => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT #update" do
    context "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested run" do
        run = Run.create! valid_attributes
        put :update, {:id => run.to_param, :run => new_attributes}, valid_session
        run.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested run as @run" do
        run = Run.create! valid_attributes
        put :update, {:id => run.to_param, :run => valid_attributes}, valid_session
        expect(assigns(:run)).to eq(run)
      end

      it "redirects to the run" do
        run = Run.create! valid_attributes
        put :update, {:id => run.to_param, :run => valid_attributes}, valid_session
        expect(response).to redirect_to(run)
      end
    end

    context "with invalid params" do
      it "assigns the run as @run" do
        run = Run.create! valid_attributes
        put :update, {:id => run.to_param, :run => invalid_attributes}, valid_session
        expect(assigns(:run)).to eq(run)
      end

      it "re-renders the 'edit' template" do
        run = Run.create! valid_attributes
        put :update, {:id => run.to_param, :run => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end
end
