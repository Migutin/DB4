--1.количество исполнителей в каждом жанре;

select g.tittle, count(artistID) from artist_genre ag
left join genre g on g.genreID = ag.genreID
group by g.tittle;


--2.количество треков, вошедших в альбомы 2019-2020 годов;
select count(*) Количество from track t
left join album a on t.albumID = a.albumID
where DATE_PART('year', a.year_of_release_album::date) between 2019 and 2020;

--3.средняя продолжительность треков по каждому альбому;
select a.title , avg(t.duration) from track t
left join album a on t.albumID = a.albumID
group by a.title;

--4.все исполнители, которые не выпустили альбомы в 2020 году;
select ar.name from album a 
left join artist_album aa on aa.albumID = a.albumID
left join artist ar on ar.artistID = aa.artistID 
where not DATE_PART('year', a.year_of_release_album::date) = 2020
group by ar.name;

--5.названия сборников, в которых присутствует конкретный исполнитель (выберите сами);

select distinct name_digets from digets d
left join digets_collection dc on dc.digetsID = d.digetsID
left join track t on dc.trackID = t.trackID
left join album a on t.albumID = a.albumID 
left join artist_album aa on a.albumID = aa.albumID
left join artist ar on ar.artistID = aa.artistID 
where ar.name like 'artist_2';

-- 6. название альбомов, в которых присутствуют исполнители более 1 жанра;

select a.title  from album a
left join artist_album aa on aa.albumID = a.albumID
left join artist ar on ar.artistID = aa.artistID
left join artist_genre ag on ag.artistID = ar.artistID
left join genre g on g.genreID = ag.genreID 
group by a.title 
having count(distinct g.tittle) > 1;

--7. наименование треков, которые не входят в сборники;
select t.name, dc.digetsID  from track t 
left join digets_collection dc on dc.trackID  = t.trackID 
where dc.digetsID is null;

--8. исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько);

select ar.name from track t
left join album a on t.albumID = a.albumID 
left join artist_album aa on a.albumID = aa.albumID
left join artist ar on ar.artistID = aa.artistID
where t.duration = (select min(duration) from track t);

--9. название альбомов, содержащих наименьшее количество треков.
select a.title, count(*) from album a
left join track t on t.albumID = a.albumID
group by a.title
having count(*) = 
				(select count(*) from album a
				left join track t on t.albumID = a.albumID
				group by a.title
				order by count(*) 
				limit 1);