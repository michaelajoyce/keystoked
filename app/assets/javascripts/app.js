/*
var ks = (function() {
	var NAV_KEYS = [8,9,13];
	var HIGHLIGHT_CLASS = "highlight";
	var $ticker = $("#ticker")
		, $textModal = $("#text-modal")
		,	$keyboard = $("#keyboard")
		, keyboardEvents = [];

	return {
		init: function() {
			$(document).keydown(function(e) {
				var originalEvent = e.originalEvent
					, keyCode = originalEvent.keyCode
					, keyLocation = originalEvent.keyLocation;
				if(NAV_KEYS.indexOf(keyCode) > -1) {
					e.preventDefault();
				}
				keyboardEvents.push(originalEvent);
				$keyboard.find("button." + keyCode + (keyLocation > 0 ? "." + keyLocation : "" )).addClass(HIGHLIGHT_CLASS);
			});

			$(document).keyup(function(e) {
				var originalEvent = e.originalEvent
					, keyLocation = originalEvent.keyLocation;
				$keyboard.find("button." + originalEvent.keyCode + (keyLocation > 0 ? "." + keyLocation : "" )).removeClass(HIGHLIGHT_CLASS);
			});

			$(document).keypress(function(e) {
				var originalEvent = e.originalEvent
					, keyLocation = originalEvent.keyLocation;
			});
		}
	};
})();
*/
