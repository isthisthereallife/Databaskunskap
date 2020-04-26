SELECT e.namn AS Namn, k.namn AS Kurs,
#, u.namn AS Utbildning
		ek.gradering AS Gradering
 FROM elever e
 		#de elevkurser som har ett elev_id som matchar elevens id
		INNER JOIN elev_x_kurs ek ON e.id = ek.elev_id
		#de kurser som har ett kursid som matchar elev_id i kurser
		INNER JOIN kurser k ON k.id = ek.kurs_id
		INNER JOIN utb
		#INNER JOIN utb_x_kurs uk ON uk.
		#INNER JOIN utb u ON u.id = e
		
		
#lista ELEVNAMN | KURS | UTBILDNING | FILIAL | ANSVARIG LÄRARE