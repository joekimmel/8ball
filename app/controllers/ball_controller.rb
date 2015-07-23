class BallController < ApplicationController

  class ShakeForm
    attr_accessor :answer_types, :answer_type, :answer_lists
    def initialize(answer_type = "traditional")
      @answer_lists = {
        traditional: [ "It is certain",
                       "It is decidedly so",
                       "Without a doubt",
                       "Yes definitely",
                       "You may rely on it",
                       "As I see it, yes",
                       "Most likely",
                       "Outlook good",
                       "Yes",
                       "Signs point to yes",
                       "Reply hazy try again",
                       "Ask again later",
                       "Better not tell you now",
                       "Cannot predict now",
                       "Concentrate and ask again",
                       "Don't count on it",
                       "My reply is no",
                       "My sources say no",
                       "Outlook not so good",
                       "Very doubtful"
      ],
      jerry: [ "Failure is the mother of success",
               "In perfection vs waste, choose the 1st",
               "Rejection itself is a value",
               "Let your idea echo",
               "It is a very simple idea with true commitments from company",
               "Dress well in Appfolio style",
               "great questions. Teacher?",
               "We need to ask QA to do so",
               "Should be less than couple minutes of down time",
               "It is seeding",
               "Why we want to play the math number?",
               "Why not accept the results of the free choice",
               "Great, how do we make this happen?",
               "Glamorous = the one creates the true customer value",
               "Too many promises is not going to help",
               "Do not hang on the 20% or 10%",
               "Run 1 minute and walk 4 minutes",
               "It is fun",
               "Not sure what you really want 8-)",
               "So dress well in Appfolio style",
               "Love it",
               "patch?",
               "We can do it tonight as live 2"
      ],
      }
      @answer_types = answer_lists.keys
      @answer_type = answer_type
    end
  end


  def home

  end

  def shake

    @form_url = request.original_url.include?("ball")? "shake" : "ball/shake"

    @form = ShakeForm.new(params[:answer_type] || "traditional")

    @answers_list = @form.answer_lists[@form.answer_type.to_sym]


  end
end
