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
    var answerCount = 2
      var displayCount = varCount+1;
      $node += '<div class="question" id="question[' + displayCount + ']"><div id="questionInput"><input type="text" name="question[' + displayCount + ']" placeholder="Question"><br></div><div id="answerInputs1"><input type="text" name="question[1]answer[1]" placeholder="Answer"><br><input type="text" name="question[1]answer[2]" placeholder="Answer"><br></div><a class="addAnswerBtn" id="addAnswerBtn1" href="#"> Add Answer</a>';
    }

    $('#questions').append($node);
  }

  View.prototype.addAnswer = function () {
    var currentChoiceInputs = $(this).prev()
    console.log("This is the number of children for current choice inputs: " + $(this).prev().children('input').length)
    var next_input_count = $(this).prev().children('input').length + 1
    $node = '<input type="text" name="question[1]answer[' + next_input_count + ']" placeholder="Answer"><br>'

     currentChoiceInputs.append($node);
  }


  View.prototype.addQuestion = function() {
    varCount++;
    $node = '<div class="question" id="question[' + varCount + ']"><div id="questionInput"><input type="text" name="question[' + varCount + ']" placeholder="Question"><br></div><div id="answerInputs' + varCount + '"><input type="text" name="question[' + varCount + ']answer[1]"] placeholder="Answer"><br><input type="text" name="question[' + varCount + ']answer[2]"] placeholder="Answer"><br></div><a class="addAnswerBtn" id="addAnswerBtn' +varCount + '" href="#"> Add Answer</a>';

    $('#questions').append($node);

    $('#addAnswerBtn' + varCount).unbind().click(function () {
        var question_id = $(this).parents()[0].id
        var currentChoiceInputs = $(this).prev()
        var next_input_count = $(this).prev().children('input').length + 1
        $node = '<input type="text" name="' + question_id+ 'answer[' + next_input_count + ']" placeholder="Answer"><br>'
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
