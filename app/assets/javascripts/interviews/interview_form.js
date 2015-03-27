

var setupInterviewForm = function() {

$('#interview_fit').rateit();
  $('#rating').bind('rated', function() { 
    // alert('rating: ' + $(this).rateit('value')); 
    $('#interview_fit').val($(this).rateit('value'));
  });

};

$(document).on('interview_form:load', setupInterviewForm);  