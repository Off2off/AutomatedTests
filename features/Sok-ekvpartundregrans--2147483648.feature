# language: sv
@sok

Egenskap: Ekvivalenspartionering undre gräns 1

Bakgrund: Användaren är inloggad
	Givet att jag är inloggad
	När jag klickar på Sök

Scenario: Off2off skall hantera ogiltliga värden
	Och jag skriver in "-2147483648"
	Så ska sidan hantera värdet rätt