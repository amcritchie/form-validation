//= require jquery
//= require jquery_ujs
//= require_tree .

$(document).on('ready', function () {

    var submitButton = $('form .submitButton');

//    submitButton.attr('disabled', true);


    var inputs = $('form input');
    var blankFields = 0;

    submitButton.on('mouseover', function () {
        console.log('hover');
//        $(this).addClass("makeyellow");
//        $(this).toggleClass("makeyellow");
    });

    if (inputs.length > 0) {
        inputs.each(function () {
            if ($(this).val() == "") {
                blankFields += 1;
            }
        });
    }


//    fields.each(function () {
//        if ($(this).val() == "") {
//            blankFields += 1;
//        }
//        console.log(this.value);
//        console.log(blankFields);9
//    });

//    if (blankFields == 0) {
//        console.log("ddd");
//    }
//
//
//    console.log(fields.length);
//
//    console.log(submitButton.length);
//

//    var taskLists = $('.task-list');
//
//    console.log(taskLists.length);
//
//    taskLists.click(function(){
//        console.log("click");
//    })
//    taskLists.on('mouseover', function () {
//        console.log('hover');
//        $(this).addClass("makeyellow");
//        $(this).toggleClass("makeyellow");
//    })

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

console.log('hello');
