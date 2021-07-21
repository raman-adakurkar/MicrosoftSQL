SELECT 
	'        THIS IS RAMAN',
	LEN(LTRIM('         THIS IS RAMAN')),
	'THIS IS RAMAN                 ',
	LEN(RTRIM('THIS IS RAMAN           '))
