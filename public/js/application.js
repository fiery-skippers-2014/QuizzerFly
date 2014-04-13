//Application JS

$(document).ready(function() {
  var view = new View()
  var controller = new Controller(view)
});

//Controller

function Controller (view) {
  this.view = view;
   $('#addQuestionBtn').click(this.view.addQuestion);
    $('#questions').on('click','.addAnswerBtn',this.view.addChoice)
}

//View JS

View = function(){
 event.preventDefault();
  questionCount = 0;
}

View.prototype = {
  addQuestion: function(e) {
    e.preventDefault();
    questionCount++;
    var question = new Question(questionCount)
    $('#questions').append(question.node);},

  addChoice: function (e) {
    e.preventDefault();
    var $this = $(e.target)
    var question_id = $this.parents()[0].id
    var currentChoiceInputs = $this.prev()
    var choice_number = currentChoiceInputs.children('input').length + 1
    var choice = new Choice(question_id, choice_number)
    currentChoiceInputs.append(choice.node);
  }

}

function Question(question_count) {
  this.node = '<div class="question" id="question' + question_count + '"><div id="questionInput"><input type="text" name="question' + question_count + '" placeholder="Question"><br></div><div id="answerInputs"></div><a class="addAnswerBtn" id="addAnswerBtn" href="#"> Add Choice</a>'
}

function Choice(question_id,choice_number) {
  this.node = '<input type="text" name="' + question_id+ 'choice' + choice_number + '" placeholder="Choice"><br>'
}


