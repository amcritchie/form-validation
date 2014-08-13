//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).on('ready', function () {

    var taskLists = $('.task-list');

    console.log(taskLists.length);

    taskLists.click(function(){
        console.log("click");
    })
    taskLists.on('mouseover', function () {
        console.log('hover');
        $(this).addClass("makeyellow");
        $(this).toggleClass("makeyellow");
    })

});


//$(document).ready(function () {
//        $('#about-link').on('click', function() {
//                alert('hello')
//            }
//        )
//    }
//)
//
//$(document).ready(function () {
//        $('.test_class').on('click', function() {
//                alert('class')
//            }
//        )
//    }
//)
//$(document).ready(function () {
//        $('#test_id').on('click', function() {
//                alert('id')
//            }
//        )
//    }
//)
//
//$('test_id').onmouseover(fun)
//
//
//$('#about-link').remove()
//
s
console.log('hello');
