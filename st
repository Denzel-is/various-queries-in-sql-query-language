USE TableD;

SELECT F.Name  AS 'faculty',
  COUNT(DISTINCT T.Id)AS 'amount'

  FROM Subjects AS S,Teachers AS T Faculties AS F Department AS D,Lectures AS L
  WHERE F.Name = 'Software Development'
  AND S.DepartmentsId = D.Id AND D.FacultyId =F=Id
  AND L.TeacherId = T.ID AND L.SubjectId = S.Id
  GROUP BY F.Name

  SELECT T.Surname + '  ' +T.Name AS 'teacher',COUNT(L.Id)AS 'lectures amount'

  FROM Teachers AS T, Lectures AS L
  WHERE T.Surname = 'Dave' AND T.Name ='McQueen' AND L.TeacherId = T.Id
  GROUP BY T.Surname ,T.Name

  SELECT L.LecturesAud AS 'auditory',COUNT(L.Id)AS 'lectures amount'

  FROM Lectures ='D201'
  GROUP BY L.LecturesAud

  SELECT L.LecturesAud AS 'auditory',COUNT(L.SubjectId) 'lectures amount'

  FROM Lectures AS L,Subjects AS S
  WHERE L.SubjectId =S.Id
  GROUP BY L.LecturesAud

  SELECT T.Surname + '  ' + T.Name AS 'teacher',G.Name AS 'group',COUNT(DISTINCT S.Id) AS 'students amount'

  FROM Teachers AS T,GroupsLectures AS GL,Lectures AS L,Group AS G,Students AS S
  WHERE S.GroupeId =G.Id AND GL.GroupeId = G.Id 
  AND GL.LecturesId = L.Id AND L.TeacherId = T.Id
  AND T.Surname = 'Underhill' AND T.Name = 'Jack'
  GROUP BY T.Surname ,T.Name,G.Name

  SELECT F.Name AS 'department',AVG(DISTINCT T.Salary) AS 'average rate'

  FROM Faculties AS F,Teachers AS T,Subjects AS S,Departments AS D,Lectures AS L

  WHERE F.Name = 'Computer Science'
  AND L.SubjectId = S.Id AND L.TeacherId= T.Id
  AND S.DepartmentsId = D.Id AND D.Faculty = F.Id
  GROUP BY F.Name
  
--min amount of st

  SELECT TOP 1 G.Name AS 'group',COUNT(ST.Id) AS 'students amount'

  FROM Group AS G, Students AS St
  WHERE St.GroupId = G.Id
  GROUP BY G.Name
  ORDER BY 'students amount' ASC
  
--max amount of st
    SELECT TOP 1 G.Name AS 'group',COUNT(ST.Id) AS 'students amount'

  FROM Group AS G, Students AS St
  WHERE St.GroupId = G.Id
  GROUP BY G.Name
  ORDER BY 'students amount' DESC

SELECT AVG(D.Financing) AS 'midle fond of financing'
FROM Department  AS D


SELECT T.Surname + '  ' +T.Name AS 'teacher',COUNT(DISTINCT S.Id) AS 'amount of read disciplines'

FROM Teachers AS T, Subject AS S,Lecture AS L
WHERE l.TeacherId = T.Id AND L.SubjectId =S.Id
GROUP BY T.Surname + '  ' + T.Name

SELECT L.DayOfWeek AS 'day of the week',COUNT(*) AS ' amout of lectures'

FROM Leectures AS L
GROUP BY L.DayOfWeek

SELECT L. LectureAud as 'lectures auditory',COUNT (DISTINCT D.Id) as 'amount of department'

FROM Lectures as L, Subjects as S, Departments as D
WHERE L.SubjectId - S.Id AND S.DepartmentsId = D.Id
GROUP BY L. LectureAud

﻿﻿SELECT F. Name as 'department',COUNT (S. Id), as 'amount of discepline'

FROM Faculties as F, Departments as D, Subjects as S
WHERE S.DepartmentsId = D.Id AND D.FacultyId = F.Id
GROUP BY F.Name
ORDER ВУ 'amount of discepline' DESC

SELECT T.Surname + ' ' + T. Name as 'teacher',L. LectureAud 'lectures aud',COUNT (DISTINCT L.SubjectId) as 'amount of lectures'

FROM Teachers as T, Lectures as L, Subjects as S
WHERE L. TeacherId = T.Id
GROUP BY T. Surname + ' ' + T. Name, L. LectureAud
ORDER BY 'teacher'







