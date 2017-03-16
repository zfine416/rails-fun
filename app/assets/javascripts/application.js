// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require jquery-ui
//= require bootstrap-sprockets
//= require turbolinks
//= require_tree .

$(function() {
	$('#datepicker').datepicker();

  	$('.search').on('click', function(){
		var address = $(this).siblings()[0].value;
		var date = $(this).siblings()[1].value.split('/');
		var month = date[0];
		var day = date[1];
		var year = date[2];
		var formattedDate = year + '-' + month + '-' + day;
		$.get('/rinks/search/' + address + '/' + formattedDate, (res,err) => {
			renderGames(res);
		})
	})
});

var renderGames = (res) => {
	$('.game_occurrences');
}

