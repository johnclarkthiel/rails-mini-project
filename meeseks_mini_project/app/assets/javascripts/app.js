console.log('HELLO, GOODBYE');

$(function(){
	$('.yelpreq').click(function(){
		console.log('YELP REQUEST BUTTON WORKING');
		console.log($('.searchparams').val());
		// $('.searchparams').val(null);
		var search = $('.searchparams').val();
		var userID = $('.userID').val();
		$.ajax({ type: "POST", url: '/users/yelpsearch', dataType: 'json', data : { yelp_search : search },
			success: function(data) {
				console.log(data);
				$('.searchparams').val(null);
			},
			error: function(err) {
				console.log(err);
				$('.searchparams').val(null);
			}
		});


	});

}); //-----------END FUNCTION ON LOAD