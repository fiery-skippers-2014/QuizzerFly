$(function () {
    var ctx = document.getElementById("myChart").getContext("2d"); //Get the context of the canvas element we want to select

    // Call a method of the name of the chart we want to create. Pass in the data for that chart type, and the options for that chart as parameters. Chart.js will merge the options you pass in with the default options for that chart type.
    // Value is the number of users who chose that specific answer
    // Chart.js will total the numbers and automatically calculate the proportion of each slice on the chart

    var question1 = new Chart(ctx).Pie(data,options);
    var data = [
        {
            //Answer 1 results
            value: 5,
            color:"#FF0000"
        },
        {
            // Answer 2 results
            value : 3,
            color : "#FF4040"
        },
        {
            // Answer 3 results
            value : 1,
            color : "#FF7373"
        }
    ];

    var question2 = new Chart(ctx).Pie(data,options);
    var data = [
        {
            //Answer 1 results
            value: 7,
            color:"#FF6C00"
        },
        {
            // Answer 2 results
            value : 12,
            color : "#FF9140"
        },
        {
            // Answer 3 results
            value : 2,
            color : "#FFAE73"
        },
        {
            // Answer 4 results
            value : 8,
            color : "#BF6D30"
        }
    ];

    var question3 = new Chart(ctx).Pie(data,options);
    var data = [
        {
            //Answer 1 results
            value: 5,
            color:"#00675C"
        },
        {
            // Answer 2 results
            value : 3,
            color : "#34CFBE"
        },
        {
            // Answer 3 results
            value : 6,
            color : "#5DCFC3"
        }
    ];
    var question4 = new Chart(ctx).Pie(data,options);
    var data = [
        {
            //Answer 1 results
            value: 9,
            color:"#00CC00"
        },
        {
            // Answer 2 results
            value : 4,
            color : "#008500"
        },
        {
            // Answer 3 results
            value : 2,
            color : "#67E667"
        }
    ];
});


Pie.defaults = {
    //Boolean - Whether we should show a stroke on each segment
    segmentShowStroke : true,

    //String - The colour of each segment stroke
    segmentStrokeColor : "#fff",

    //Number - The width of each segment stroke
    segmentStrokeWidth : 2,

    //Boolean - Whether we should animate the chart
    animation : true,

    //Number - Amount of animation steps
    animationSteps : 100,

    //String - Animation easing effect
    animationEasing : "easeOutBounce",

    //Boolean - Whether we animate the rotation of the Pie
    animateRotate : true,

    //Boolean - Whether we animate scaling the Pie from the centre
    animateScale : false,

    //Function - Will fire on animation completion.
    onAnimationComplete : null
};
