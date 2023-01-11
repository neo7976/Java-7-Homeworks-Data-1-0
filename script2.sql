# Скрипт, который будет искать в таблице PERSONS поля name и surname пользователей, которые проживают в MOSCOW.

select name, surname
from homework.PERSONS
where city_of_living = 'MOSCOW'
order by surname;