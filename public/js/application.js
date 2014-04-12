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
    $('#questionInput').append('<input type="text" name="question[' + this.questionCount + ']" placeholder="Question"><br>');
    questionCount++;
     console.log(questionCount)
  };

  View.prototype.add_answer = function () {
    $('#answerInput').append('<input type="text" name="answer[' + this.answerCount + ']" placeholder="Answer"><br>');
    answerCount++;
     console.log(answerCount)
  }
}

//Controller

function Controller (view) {
  this.view = view;
  $('#addQuestionBtn').unbind().click(this.view.add_question);
  $('#addAnswerBtn').unbind().click(this.view.add_answer);
}


