# language: sv
@sidtitlar

Egenskap: Varje sida ska ha en anpassad sidtitel
	För att förstå vart jag befinner mig på sidan
	Som en användare
	Vill se på sidtiteln vart jag befinner mig på sidan
	
Bakgrund: Användaren är inloggad
	Givet att jag är inloggad

Scenario: Jag läser sidtiteln på min sida
	När jag klickar på min sida
	Så ska sidtiteln innehålla "Min sida"

Scenario: Jag läser sidtiteln på söksidan
	När jag klickar på sök
	Så ska sidtiteln innehålla "Sök"

Scenario: Jag läser sidtiteln på tjänster
	När jag klickar på tjänster
	Så ska sidtiteln innehålla "Tjänster"
	
Scenario: Jag läser sidtiteln på annonsera
	När jag klickar på annonsera
	Så ska sidtiteln innehålla "Annonsera"

Scenario: Jag läser sidtiteln på Admin
	När jag går till admin
	Så ska sidtiteln innehålla "Admin"

Scenario: Jag läser sidtiteln på Logga In
	När jag klickar på logga ut
	Och jag klickar på logga in
	Så ska sidtiteln innehålla "Logga in"
