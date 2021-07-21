SELECT 
	B.Title, 
	B.ISBN,
	A.AuthorName,
	P.PublisherName

FROM 
	BookAuthor BA

INNER JOIN BOOK B
ON BA.BookID = B.BookID

INNER JOIN Author A
ON BA.AuthorID = A.AuthorID

INNER JOIN Publisher P
ON B.PublisherID = P.PublisherID