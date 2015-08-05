require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  
	def setup
		@user = User.create( username: "testing", email: "Leshiy85.85@rambler.ru" )
		@question = @user.questions.build(title: "question 1", description: "true || false" )
	end

	test "question should be valid" do
		assert @question.valid?
	end

	test "user_id should be present" do
		@question.user_id = nil
		assert_not @question.valid?
	end

	test "title should be present" do
		@question.title = " "
		assert_not @question.valid?
	end

	test "title length should be not too long" do
		@question.title = "a" * 101
		assert_not @question.valid?
	end

	test "title length should be not too short" do
		@question.title = "aaaa"
		assert_not @question.valid?
	end

	test "description should be present" do
		@question.description = " "
		assert_not @question.valid?
	end

	test "description should be not too long" do
		@question.description = "a" * 101
		assert_not @question.valid?
	end

	test "description should be not too short" do
		@question.description = "aaaa"
		assert_not @question.valid?
	end

end
