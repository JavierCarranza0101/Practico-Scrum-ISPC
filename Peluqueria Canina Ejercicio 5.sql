select d.Nombre AS dueno, p.Nombre AS perro 
from dueno AS d 
inner join perro AS p on d.DNI=p.DNI_dueno where d.Nombre='Pedro'

