class BallController < ApplicationController

  class ShakeForm
    attr_accessor :answer_types, :answer_type, :answer_lists
    def initialize(answer_type = "traditional")
      @answer_lists = {
        traditional: [
          "It is certain",
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
        jerry: [
          "Failure is the mother of success",
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
          "We can do it tonight as live 2",
          "Time's up!"
        ],
        qa: [
          "Can I get a demo?",
          "Its fiiine",
          "Let’s ask Regina",
          "Did you browser test it?",
          "Did you look at the ET?",
          "AUGH OK",
          "I don’t think it does what you think it does",
          "Def- … well, probably.",
          "Only if you checked it on IE11",
          "I trust you",
          "I don’t trust you",
          "I’m sure there’s no bugs",
          "Are you sure?",
          "Did you break everything?",
          "If its green on CI, then sure",
          "Have you actually tried it?",
          "Its fantastic and perfect",
          "I’m not QAing this.",
          "Your mother told you not to do that"
        ],
        product: [
          "Will that take longer?",
          "Listen for feedback",
          "I’m sure Nat can answer",
          "As long as it works",
          "Let me put another story in",
          "We’ll just do it next sprint",
          "Show me",
          "What? No!",
          "We really need to get this out",
          "Can we not touch solr?",
          "So lets patch to live",
          "Let’s not.",
          "It looks great!",
          "Yeah, lets spent 5 months on that",
          "Well sales already sold it",
          "So its done, right?",
          "Awesome!",
          "But it already went out",
          "Ask Grand Director Emma",
          "That’s not what the customer wants",
          "That’s not what I asked",
          "what is the status?",
          "Sure. Gifs are a great addition",
        ],
        ux: [
          "Neon Pink.",
          "Flashing animation is what we need",
          "Did you look at the mockup?",
          "It looks pretty.. but I have ideas.",
          "The text isn’t clear..",
          "Comic sans.",
          "Let's do a story mapping",
          "The color isn’t right",
          "This is crap.",
          "Are you blind?",
          "Its beautiful!",
          "How does it look on mobile?",
          "Talk to Amy",
          "Let’s do another user test",
          "The text is too small",
          "Did you check saffron?",
          "I don’t think that is a good idea",
          "Customers are going to love this",
          "Ew. It looks like Yardi",
        ],
        engineer: [
          "I can do it in less than two weeks"
        ],
        apple: [
          "Did you break the apple script?",
          "Lets call triage",
          "Wait. We have a bug for you.",
          "You know you broke prod26, right?",
          "Its not that bad",
          "We can’t understand your code",
          "Why do you want to change this",
          "Sure, Robin will do it.",
          "Yeah we’ll just make a script",
          "You have to solve this puzzle first",
          "Only if Natalie can soccer ball you",
          "Look in Ryan’s hair for the answer",
          "…. reginaaaa",
          "I don’t think they’ll like this",
          "A lot of support requests came in for it",
          "So…. Twilio",
          "You know that bug you fixed? You didn’t.",
          "Chehai fixed it.",
          "Oh! Actually its not a bug.",
          "So.. you introduced a bug with your fix"
        ],
        triage: [
          "PATCH IT NOW",
          "But its rent week",
          "If its payments, do it now",
          "what have we done.",
          "CS is getting flooded",
          "Payments? Lets wait",
          "EVERYTHING IS ON FIRE",
          "PANIC",
          "Let’s just patch to live",
          "Let’s talk to Brian",
          "Eh, its not that bad",
          "YOU BROKE IT",
          "Do you want us to get lunch?",
          "Here’s a sleeping bag",
          "No patch necessary.",
          "Can it wait?",
          "This is a disaster.",
          "Oh! Actually its not a bug.",
        ],

      }
      @answer_types = answer_lists.keys
      @answer_type = answer_type
    end
  end


  def home

  end

  def shake

    @form_url = request.original_url.include?("ball/shake")? "shake" : "ball/shake"

    @answer_type = params[:answer_type] || "traditional"
    @form = ShakeForm.new(@answer_type)

    @answers_list = @form.answer_lists[@form.answer_type.to_sym]


  end
end
