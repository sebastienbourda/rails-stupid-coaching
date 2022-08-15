# frozen_string_literal: true

# Questions Controller
class QuestionsController < ApplicationController
  def ask() end

  def answer
    # Si le message est I am going to work, le coach répondra Great!.
    # Si le message contient un point d’interrogation ? à la fin, le coach répondra Silly question, get dressed and go to work!.
    # Sinon, le coach répondra I don't care, get dressed and go to work!.
    @question = params[:answer]
    @answer = if @question.include?('?')
                'Silly question, get dressed and go to work!'
              elsif @question == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
