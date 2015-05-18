require "test_helper"

class PollTest < ActiveSupport::TestCase

  def poll
    @poll ||= Poll.new
  end

  def test_valid
    assert poll.valid?
  end

end
