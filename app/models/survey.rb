class Survey < ActiveRecord::Base
  belongs_to :user
  has_many :questions
  has_many :choices, through: :questions

  def build(params)
    questions = params_to_question_array(params)
    questions.each { |question|
      new_question = Question.create({question_text: question.shift})
      question.each { |choice|
        new_question.choices << Choice.create(choice_text: choice)
        self.questions << new_question
      }
    }
  end

  def params_to_question_array(params)
    # im confused as to why you need specific numbers here.
    question_counter = 1
    questions_array = []
    while params.has_key?("question#{question_counter}")
        questions_hash = params.select { |k, v|
        question_array = []
         question_array << v if k =~ /question#{question_counter}/
      }
      questions_array << questions_hash.values
      question_counter +=1
    end
    questions_array
  end

end




