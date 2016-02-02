require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do

  controller do
    include Foyer::TestHelpers
  end

  let(:user) { create(:user) }
  let(:update_form) { create(:update_form, user: user)}
  let(:question) { create(:question, update_form: update_form) }
  let(:question_update_attributes) {
    attributes_for(:question, text: 'updated question', update_form_id: update_form)
  }

  describe "GET edit" do
    it "should render js" do
      controller.sign_in user
      xhr :get, 'edit', params: { update_form_id: update_form.id, id: question.id }

      expect(response.content_type).to eq Mime::JS
    end
  end

  describe "PUT update" do
    context ".Logged in user" do

      before do
        controller.sign_in user
      end

      it "should update question" do
        put :update,
            update_form_id: update_form.id,
            id: question.id,
            question: question_update_attributes
        question.reload

        expect(question.text).to eq "updated question"
      end
    end

    context '.Non logged in user' do
      let(:old_text) { question.text }

      before do
        put :update,
            update_form_id: update_form.id,
            id: question.id,
            question: question_update_attributes
      end

      it "should not update question" do
        question.reload

        expect(question.text).to eq old_text
      end

      it "should ask user to login first" do
        expect(response).to redirect_to("/auth/google?origin=%2Fquestions%2F#{question.id}")
      end
    end
  end
end
