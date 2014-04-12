
//View JS

function View() {
  this.buttonWhichDoesSomething = $('#add_question');

  this.add_question = function () {
    $('#question_inputs').append("<br><input type='text' name='question[0]' placeholder='Question'>")


  };
}

//Controller

function Controller (view) {
  // var self = this;
  this.view = view;
  // this.view.buttonWhichDoesSomething.click(this.view.add_question)
  $('#add_question').addEventListener('click', this.view.add_question);
}

//Application JS

$(document).ready(function() {
  var view = new View()
  var controller = new Controller(view)

});


  // this.questionCount = 1;

  // addQuestion: function(event){
  //   event.preventDefault();
  //   $("#question_inputs").append('<input type="text" name="question[' + this.questionCount.toString() + ]' placeholder="Question">');
  //   this.questionCount++;
  // }
