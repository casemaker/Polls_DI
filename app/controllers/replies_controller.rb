class RepliesController < ApplicationController
  before_action :set_poll

  def new
    @poll = Poll.find params[:poll_id]
    @reply = @poll.replies.build
    
    @poll.questions.each { |question| @reply.answers.build question: question }
    
  end

  def create
    @reply = @poll.replies.build reply_params

    @poll = Poll.find params[:poll_id]
    
    respond_to do |format|
      if @reply.save
        format.html { redirect_to @poll, notice: "Thank you for taking the poll." }
      else
        format.html { render :new }
      end
    end
  end

  private

  def set_poll
    @poll = Poll.find params[:poll_id]
  end

  def reply_params
    params.require[:reply].permit(:poll_id, { answers_attributes: [ :value, :question_id, :reply_id, :possible_answer_id ] })
  end
end
