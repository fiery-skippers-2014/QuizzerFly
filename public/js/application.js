
//View JS

function View() {
  this.buttonWhichDoesSomething = $('#add_question');

  this.add_question = function () {
    $('#questionbtn').append("<br><input type='text' name='question[0]' placeholder='Question'>")
  };

  this.add_answer = function () {
    $('#addAnswerBtn').append('<br><input type="text" name="answer[0]" placeholder="Answer">')
  };
}

//Controller

function Controller (view) {
  this.view = view;
  $('#questionbtn').click(this.view.add_question);
  $('#addAnswerBtn').click(this.view.add_answer);
}

//Application JS

$(document).ready(function() {
  var view = new View()
  var controller = new Controller(view)
});

