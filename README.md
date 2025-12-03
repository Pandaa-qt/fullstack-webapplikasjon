plan:
03.12 – starter med oppgava, lage repositoryen, logge  
04.12 – jobbe med oppgava og lage nettside til databasen og koble nettsida og databasen. logge  
10.12 – fortsette med det frå sistgang. logge  
11.12 – fortsette med det ein halde på med. logge  
17.12 – fagsamtale eller ferdig.  
18.12 – fagsamtale eller ferdig.  

Table 1	Menu_catergory	
category		promærnøkkel
name		namn
description		beskrivelse

Table 2	Menu_item	
Thing_id		primærnøkkel
Category_id		Kategori_id
Name		namn
description		beskrivelse
price		pris
availeble		tilgjengleg

Table 3	customer	
Customer_id		primærnøkkel
Name		namn
phone		Telefon nummer
Email		epost

Table 4	booking	
Booking_id		primærnøkkel
Custumer_id		Kven som bestiller
Booking_date		Datoen
Booking_time		Klokkeslett
Num_people		Antall folk
notes		informasjon
status		status

Table 5	emploee	
Emploee_id		promærnøkkel
Name		Namn på ansatt
email		eposten
role		rollen

Table 6	Booking_action_log	
Action_id		Primærnøkkel
Booking_id		Hvilken bestilling
Emploee_id		Kem utførte handlinga
Action		Bestild, ubestilt, opdatert
timestamp		Tiden de blei gjørt

