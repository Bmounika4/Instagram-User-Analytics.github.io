# Ad compaign launch

SELECT 
	sum(case weekday(created_at) when 0 THEN 1
			else 0
            end) as Monday,
	sum(case weekday(created_at) when 1 then 1
            else 0
		end) as Tuesday,
	sum(case weekday(created_at) when 2 then 1
            else 0
		end) as Wednesday,
	sum(case weekday(created_at) when 3 then 1
            else 0
		end) as Thursday,
	sum(case weekday(created_at) when 4 then 1
            else 0
		end) as Friday,
	sum(case weekday(created_at) when 5 then 1
            else 0
		end) as Saturday,
	sum(case weekday(created_at) when 6 then 1
            else 0
		end) as Sunday
FROM users;
