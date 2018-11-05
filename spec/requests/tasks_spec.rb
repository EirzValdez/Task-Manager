require 'rails_helper'

RSpec.describe "Tasks", type: :request do
  describe "GET /tasks" do
    it 'display some tasks' do
    	visit tasks_path

    	page.should have_content 'go to bed' #Should display a task "go to bed" in the website (should be true)
    end
  end
end
