require "test_helper"

class PossibleAnswerTest < ActiveSupport::TestCase

  def possible_answer
    @possible_answer ||= PossibleAnswer.new
  end

  def test_valid
    assert possible_answer.valid?
  end

end
