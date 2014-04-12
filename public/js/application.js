//Application JS

$(document).ready(function() {
  var view = new View()
  view.first_questions()
  var controller = new Controller(view)

});

//View JS

function View() {

  event.preventDefault();
  var answerCount = 0;

  View.prototype.first_questions = function () {
    var questionStartingCount = 1;
    var $node = '';
    for(varCount=0;varCount<questionStartingCount;varCount++){
      console.log("This is the var_Count: " + varCount)
      var displayCount = varCount+1;

      $node += '<div class="question" id="question[' + displayCount + ']"><div id="questionInput"><input type="text" name="question[' + displayCount + ']" placeholder="Question"><br></div><div id="answerInput"><input type="text" name="question[' + displayCount + '][answer[0]"] placeholder="Answer"><br><input type="text" name="question[' + displayCount + '][answer[0]"] placeholder="Answer"><br></div><a id="addAnswerBtn" href="#"> Add Answer</a>'

    }

    $('#questions').prepend($node);
  }

  View.prototype.add_question = function() {
    varCount++;
    $node = '<div class="question" id="question[' + varCount + ']"><div id="questionInput"><input type="text" name="question[' + varCount + ']" placeholder="Question"><br></div><div id="answerInput"><input type="text" name="question[' + varCount + '][answer[0]"] placeholder="Answer"><br><input type="text" name="question[' + varCount + '][answer[0]"] placeholder="Answer"><br></div><a id="addAnswerBtn" href="#"> Add Answer</a>';
    $('#questions').after($node);
  };


  View.prototype.add_answer = function () {
    $node = '<input type="text" name="answer[' + this.answerCount + ']" placeholder="Answer"><br>'
    // $('#answerInput').append('<input type="text" name="answer[' + this.answerCount + ']" placeholder="Answer"><br>');
    answerCount++;
     console.log(answerCount)
    $(this).parent().after($node);
  }
}

//Controller

function Controller (view) {
  this.view = view;
  console.log($('#addQuestionBtn'))

  $('#addQuestionBtn').unbind().click(this.view.add_question);
  $('#addAnswerBtn').unbind().click(this.view.add_answer);
}


// function View() {

//   event.preventDefault();
//   var answerCount = 0;
//   View.prototype.first_questions = function () {
//   var questionStartingCount = 1;
//   var $node = "";
//   console.log("First questions running")
//   for(varCount=0;varCount<=questionStartingCount;varCount++){
//     console.log("This is the var_Count: " + varCount)
//     var displayCount = varCount+1;
//     $node += '<div class="question" id="question' + displayCount + '"><div id="questionInput"><input type="text" name="question[0]" placeholder="Question"><br></div><div id="answerInput"><input type="text" name="question[0][answer[0]"] placeholder="Answer"><br><input type="text" name="question[0][answer[0]"] placeholder="Answer"><br></div><a id="addAnswerBtn" href="#"> Add Answer</a><br><a id="addQuestionBtn" href="#"> Add Question</a></div>'
//     console.log("This is the displayCount" + displayCount)
//   }

  // $('#addQuestionBtn').unbind().click(this.view.add_question);