ready = ->
	Typed.new '.element',
		strings: [
			"I Need Your Head In My Business.",
			"You're Only As Good As Your Last Haircut."
		]
		typeSpeed: 30
		backDelay: 6000
		loop: true
	return

$(document).ready ready
$(document).on 'turbolinks:load', ready
