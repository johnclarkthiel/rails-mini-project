console.log('HELLO, GOODBYE');

$(function(){
	// $('.crap').click(function(){
	// 	console.log("CRAP WORKING");
	// })

	var userID = $('.userID').val();

	$('.yelpreq').click(function(){
		console.log('YELP REQUEST BUTTON WORKING');
		console.log($('.searchparams').val());
		// $('.searchparams').val(null);
		var search = $('.searchparams').val();
		var userID = $('.userID').val();
		$.ajax({ type: "POST", url: '/users/yelpsearch', dataType: 'json', data : { yelp_search : search },
			success: function(data) {
				console.log("HERE IS THE DATA", data);
				$('.searchparams').val(null);
				$('.results').append("<h4>Search Results: </h4>");
				for (var i = 0; i < data.length; i ++ ) {
				$('.results').append("<p>Bar name: "+data[i].name+"</p>");
				$('.results').append("<p>Bar rating: "+data[i].rating+"</p>");
				$('.results').append("<p>Bar sample review: "+data[i].snippet_text+"</p>");
				$('.results').append("<p>Bar city: "+data[i].location.city+"</p>");
				$('.results').append("<p>Bar phone: "+data[i].display_phone+"</p>");
				$('.results').append("<p>Bar yelp site: "+data[i].url+"</p>");
				$('.results').append("<form action='/users/"+userID+"/add_search' method='POST'><input type='hidden' name='bar_name' value="+data[i].name+"/><input type='hidden' name='rating' value="+data[i].rating+"/><input type='hidden' name='review' value="+data[i].snippet_text+"/><input type='hidden' name='user_id' value="+userID+"/><button>Save search</button></form>");
				// $('.results').append("<input type='hidden' name='bar_name' value="+data[i].name+"/>");
				// $('.results').append("<input type='hidden' name='bar_name' value="+data[i].name+"/>");
				// $('.results').append("<input type='hidden' name='rating' value="+data[i].rating+"/>");
				// $('.results').append("<input type='hidden' name='review' value="+data[i].snippet_text+"/>");
				// $('.results').append("<input type='hidden' name='user_id' value="+userID+"/>");
				// $('.results').append("<button>Save search</button>");
				// $('.results').append("</form>");
				$('.results').append("<br/><hr/>");
				}
			},
			error: function(err) {
				console.log(err);
				$('.searchparams').val(null);
			}
		});


	});

}); //-----------END FUNCTION ON LOAD