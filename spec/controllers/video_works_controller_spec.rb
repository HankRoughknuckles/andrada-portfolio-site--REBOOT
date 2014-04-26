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

describe VideoWorksController do

  # This should return the minimal set of attributes required to create a valid
  # VideoWork. As you add validations to VideoWork, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) { {  } }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # VideoWorksController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all video_works as @video_works" do
      video_work = VideoWork.create! valid_attributes
      get :index, {}, valid_session
      assigns(:video_works).should eq([video_work])
    end
  end

  describe "GET show" do
    it "assigns the requested video_work as @video_work" do
      video_work = VideoWork.create! valid_attributes
      get :show, {:id => video_work.to_param}, valid_session
      assigns(:video_work).should eq(video_work)
    end
  end

  describe "GET new" do
    it "assigns a new video_work as @video_work" do
      get :new, {}, valid_session
      assigns(:video_work).should be_a_new(VideoWork)
    end
  end

  describe "GET edit" do
    it "assigns the requested video_work as @video_work" do
      video_work = VideoWork.create! valid_attributes
      get :edit, {:id => video_work.to_param}, valid_session
      assigns(:video_work).should eq(video_work)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new VideoWork" do
        expect {
          post :create, {:video_work => valid_attributes}, valid_session
        }.to change(VideoWork, :count).by(1)
      end

      it "assigns a newly created video_work as @video_work" do
        post :create, {:video_work => valid_attributes}, valid_session
        assigns(:video_work).should be_a(VideoWork)
        assigns(:video_work).should be_persisted
      end

      it "redirects to the created video_work" do
        post :create, {:video_work => valid_attributes}, valid_session
        response.should redirect_to(VideoWork.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved video_work as @video_work" do
        # Trigger the behavior that occurs when invalid params are submitted
        VideoWork.any_instance.stub(:save).and_return(false)
        post :create, {:video_work => {  }}, valid_session
        assigns(:video_work).should be_a_new(VideoWork)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        VideoWork.any_instance.stub(:save).and_return(false)
        post :create, {:video_work => {  }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested video_work" do
        video_work = VideoWork.create! valid_attributes
        # Assuming there are no other video_works in the database, this
        # specifies that the VideoWork created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        VideoWork.any_instance.should_receive(:update).with({ "these" => "params" })
        put :update, {:id => video_work.to_param, :video_work => { "these" => "params" }}, valid_session
      end

      it "assigns the requested video_work as @video_work" do
        video_work = VideoWork.create! valid_attributes
        put :update, {:id => video_work.to_param, :video_work => valid_attributes}, valid_session
        assigns(:video_work).should eq(video_work)
      end

      it "redirects to the video_work" do
        video_work = VideoWork.create! valid_attributes
        put :update, {:id => video_work.to_param, :video_work => valid_attributes}, valid_session
        response.should redirect_to(video_work)
      end
    end

    describe "with invalid params" do
      it "assigns the video_work as @video_work" do
        video_work = VideoWork.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        VideoWork.any_instance.stub(:save).and_return(false)
        put :update, {:id => video_work.to_param, :video_work => {  }}, valid_session
        assigns(:video_work).should eq(video_work)
      end

      it "re-renders the 'edit' template" do
        video_work = VideoWork.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        VideoWork.any_instance.stub(:save).and_return(false)
        put :update, {:id => video_work.to_param, :video_work => {  }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested video_work" do
      video_work = VideoWork.create! valid_attributes
      expect {
        delete :destroy, {:id => video_work.to_param}, valid_session
      }.to change(VideoWork, :count).by(-1)
    end

    it "redirects to the video_works list" do
      video_work = VideoWork.create! valid_attributes
      delete :destroy, {:id => video_work.to_param}, valid_session
      response.should redirect_to(video_works_url)
    end
  end

end