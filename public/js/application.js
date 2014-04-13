//Application JS

$(document).ready(function() {
  var view = new View()
  view.first_questions()
  var controller = new Controller(view)

});

//View JS

function View() {
  event.preventDefault();

  View.prototype.first_questions = function () {
    var questionStartingCount = 1;
    var $node = '';
    for(varCount=0;varCount<questionStartingCount;varCount++){
    var choiceCount = 2
      var displayCount = varCount+1;
      $node += '<div class="question" id="question' + displayCount + '"><div id="questionInput"><input type="text" name="question' + displayCount + '" placeholder="Question"><br></div><div id="choiceInputs1"><input type="text" name="question1choice1" placeholder="Choice"><br><input type="text" name="question1choice2" placeholder="Choice"><br></div><a class="addAnswerBtn" id="addAnswerBtn1" href="#"> Add Choice</a>';
    }

    $('#questions').append($node);
  }

  View.prototype.addAnswer = function () {
    var currentChoiceInputs = $(this).prev()
    console.log("This is the number of children for current choice inputs: " + $(this).prev().children('input').length)
    var next_input_count = $(this).prev().children('input').length + 1
    $node = '<input type="text" name="question1choice' + next_input_count + '" placeholder="Choice"><br>'
     currentChoiceInputs.append($node);
  }


  View.prototype.addQuestion = function() {
    varCount++;
    $node = '<div class="question" id="question' + varCount + '"><div id="questionInput"><input type="text" name="question' + varCount + '" placeholder="Question"><br></div><div id="answerInputs' + varCount + '"><input type="text" name="question' + varCount + 'choice1" placeholder="Choice"><br><input type="text" name="question' + varCount + 'choice2" placeholder="Choice"><br></div><a class="addAnswerBtn" id="addAnswerBtn' +varCount + '" href="#"> Add Choice</a>';

    $('#questions').append($node);

    $('#addAnswerBtn' + varCount).unbind().click(function () {
        var question_id = $(this).parents()[0].id
        var currentChoiceInputs = $(this).prev()
        var next_input_count = $(this).prev().children('input').length + 1
        $node = '<input type="text" name="' + question_id+ 'choice' + next_input_count + '" placeholder="Choice"><br>'
        currentChoiceInputs.append($node);
        });
  };

}

//Controller

function Controller (view) {
  this.view = view;
  $('#addQuestionBtn').unbind().click(this.view.addQuestion);
  $('#addAnswerBtn1').unbind().click(this.view.addAnswer);
}
