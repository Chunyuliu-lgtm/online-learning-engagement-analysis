--Query 1: Top 10 Courses by Enrollment

select 
     course_id,
     count(*)as total_enrollment
from courses_cleaned_for_sql
group by course_id
order by total_enrollment desc
limit 10; 

-- Query 2: Top 10 Courses by Certification Rate

select
     course_id,
     count(*) as total_enrollment,
     sum(certified)as certified_users,
     round(sum(certified)*100.0/count(*),2) as certified_rate
from courses_cleaned_for_sql
group by course_id
having count(*)>=1000
order by certified_rate desc
limit 10;
-- popularity does not mean student success

--Query 3: Certified vs Non-certified Learners
select 
     course_id,
     count(*) as total_enrollment,
     round(AVG(ndays_act)::numeric,2) as avg_active_days,
     round(AVG(nevents)::numeric,2) as avg_events,
     round(AVG(nplay_video)::numeric,2) as avg_video_plays,
     round(AVG(nchapters)::numeric,2) as avg_chapters, 
     round(SUM(certified)*100.0/count(*),2) as certified_rate
from courses_cleaned_for_sql 
group by course_id 
having count(*)>=1000
order by certified_rate desc 
limit 10;

select 
     certified,
     round(avg(ndays_act)::numeric,2)as avg_active_days,
     round(avg(nevents)::numeric,2) as avg_events,
     round(avg(nplay_video)::numeric,2) as avg_video_plays,
     round(avg(nchapters)::numeric,2) as avg_chapters
from courses_cleaned_for_sql
group by certified;