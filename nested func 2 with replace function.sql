select
	FirstName,
	substring(FirstName, 2, 7) as [step 1],
	upper(SUBSTRING(FirstName, 2, 7)) as [step 2],
	replace(upper(SUBSTRING(FirstName, 2, 7)), 'E', 'x') as [step 3]
from Person.person