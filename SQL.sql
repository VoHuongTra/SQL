select * from person where gender = 'Male' and DATE_FORMAT(FROM_DAYS(DATEDIFF(now(),birthdate)), '%Y')+0 < 45
select * from person where gender = 'Female' and job = 'driver'
select male.male_no / female.female_no
from   (
			select count(name) as female_no
            from JAVA_QC.person
            where 
				gender = "Female"
                and
                job = "developer"
       ) as female,
       (
			select count(name) as male_no
            from person
            where 
				gender = "Male"
                and
                job = "developer"
		) as male
        
select city, COUNT(*) as count from person where gender = 'Female' group by city order by count desc limit 5