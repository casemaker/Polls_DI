require "test_helper"

class ReplyTest < ActiveSupport::TestCase

  def reply
    @reply ||= Reply.new
  end

  def test_valid
    assert reply.valid?
  end

end
