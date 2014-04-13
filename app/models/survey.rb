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
    counter = 1
    questions = []
    puts params.has_key?("question#{counter}")
    while params.has_key?("question#{counter}")
      puts counter
        hash = params.select { |k, v|
        question_array = []
        if k =~ /question#{counter}/;
         question_array << v
        end
      }
      questions << hash.values
      counter +=1
    end
    questions
  end

end




