--select * from kraj;
--1
--a
/*select count (nazov)
from obec o1
join obec o2    /* on o1.nazov = o2.nazov*/
using (nazov)
 where o1.id_okres <> o2.id_okres ;*/

--b

/*select nazov, count(nazov) as pocet
from obec
order by desc;*/

--2
/*select count(o.nazov) as pocet
from okres o
join kraj k ON o.id_kraj = k.id
where k.nazov like 'Kosicky kraj';*/

--3
/*select count(ob.nazov)
from obec ob
join okres ok on ok.id = ob.id_okres
join kraj k on ok.id_kraj = k.id
where k.nazov like 'Kosicky kraj';*/

--4
/*select id_obec, o.nazov ,(zeny+muzi) as Obyvatelov_spolu
from populacia p
join obec o ON p.id_obec = o.id
where muzi+zeny = (SELECT MAX(zeny+muzi) from populacia);
*/
--5
/*select o.nazov,zeny+muzi as spolu
from populacia p
join obec o ON o.id=p.id_obec
where o.nazov like 'Sabinov' and p.rok=2012;*/

--6
/*select rok,sum(muzi+zeny) as spolu
from populacia
group by rok;*/

--7
/*select o.nazov,(muzi+zeny) as spolu,'2011'
from obec o
join populacia p on p.id_obec = o.id
join okres ok on o.id_okres = ok.id
where    ok.nazov like 'Tvrdosin' and rok = 2011
order by spolu;*/










