
//View JS

function View() {
  this.buttonWhichDoesSomething = $('#add_question');

  this.add_question = function () {
    $('#questionbtn').append("<br><input type='text' name='question[0]' placeholder='Question'>")


  };
}

//Controller

function Controller (view) {
  this.view = view;
  $('#questionbtn').click(this.view.add_question);
}

//Application JS

$(document).ready(function() {
  var view = new View()
  var controller = new Controller(view)

});

