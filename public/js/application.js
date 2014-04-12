//Application JS

$(document).ready(function() {
  var view = new View()
  var controller = new Controller(view)
  view.first_questions()
});

//View JS

function View() {

  event.preventDefault();
  var answerCount = 0;
  View.prototype.first_questions = function () {
  var questionStartingCount = 3;
  var $node = "";
  for(varCount=0;varCount<=questionStartingCount;varCount++){
    var displayCount = varCount+1;
    $node += '<div class="question" id="question' + displayCount + '"><div id="questionInput"><input type="text" name="question[0]" placeholder="Question"><br></div><div id="answerInput"><input type="text" name="question[0][answer[0]"] placeholder="Answer"><br><input type="text" name="question[0][answer[0]"] placeholder="Answer"><br></div><a id="addAnswerBtn" href="#"> Add Answer</a><br><a id="addQuestionBtn" href="#"> Add Question</a></div>'
  }
 
  // $(#questions).prepend($node);
}

View.prototype.add_question = function() {
varCount++;
$node = '<div class="question" id="question' + varCount + '"><div id="questionInput"><input type="text" name="question[0]" placeholder="Question"><br></div><div id="answerInput"><input type="text" name="question[0][answer[0]"] placeholder="Answer"><br><input type="text" name="question[0][answer[0]"] placeholder="Answer"><br></div><a id="addAnswerBtn" href="#"> Add Answer</a><br><a id="addQuestionBtn" href="#"> Add Question</a></div>';
$(this).parent().before($node);
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
