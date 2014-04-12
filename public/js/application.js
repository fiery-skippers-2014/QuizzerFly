//Application JS

$(document).ready(function() {
  var view = new View()
  var controller = new Controller(view)
});

//View JS

function View() {
  event.preventDefault();
  var questionCount = 0;
  var answerCount = 0;

  View.prototype.add_question = function () {
    $('#addQuestionBtn').append('<br><input type="text" name="question[' + this.questionCount + ']" placeholder="Question">');
    questionCount++;
    console.log(questionCount)
  };

  View.prototype.add_answer = function () {
    $('#addAnswerBtn').append('<br><input type="text" name="answer[' + this.answerCount + '] placeholder="Answer">');
    answerCount++;
    console.log(answerCount)
  }
}

//Controller

function Controller (view) {
  this.view = view;
  $('#addQuestionBtn').click(this.view.add_question);
  $('#addAnswerBtn').click(this.view.add_answer);
}


