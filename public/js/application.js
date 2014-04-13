//Application JS

$(document).ready(function() {
  var view = new View()
  var controller = new Controller(view)
});

//View JS
function Question(question_count) {
  this.node = '<div class="question" id="question' + question_count + '"><div id="questionInput"><input type="text" name="question' + question_count + '" placeholder="Question"><br></div><div id="answerInputs' + question_count + '"></div><a class="addAnswerBtn" id="addAnswerBtn' +question_count + '" href="#"> Add Choice</a>'
}

function Choice(question_id,choice_number) {
  this.node = '<input type="text" name="' + question_id+ 'choice' + choice_number + '" placeholder="Choice"><br>'
}

View = function(){
 event.preventDefault();
  questionCount = 0;
}

View.prototype = {
  addQuestion: function() {
    questionCount++;
    var question = new Question(questionCount)
    $('#questions').append(question.node);
    // $('#addAnswerBtn' + questionCount).click(
    //   function () {
    //     var question_id = $(this).parents()[0].id
    //     var currentChoiceInputs = $(this).prev()
    //     var choice_number = currentChoiceInputs.children('input').length + 1
    //     var choice = new Choice(question_id, choice_number)
    //     currentChoiceInputs.append(choice.node);
    //     });}
  // func2: function(){}
}



//Controller

function Controller (view) {
  this.view = view;
  $('#addQuestionBtn').click(this.view.addQuestion);



}


    $('#addAnswerBtn' + questionCount).click(
      function () {
        var question_id = $(this).parents()[0].id
        var currentChoiceInputs = $(this).prev()
        var choice_number = currentChoiceInputs.children('input').length + 1
        var choice = new Choice(question_id, choice_number)
        currentChoiceInputs.append(choice.node);
        });}

  // View.prototype.addAnswer = function () {
  //   var currentChoiceInputs = $(this).prev()
  //   var next_input_count = $(this).prev().children('input').length + 1
  //   $node = '<input type="text" name="question1choice' + next_input_count + '" placeholder="Choice"><br>'
  //    currentChoiceInputs.append($node);
  // }