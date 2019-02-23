use `DE-AK`;

create user 'Deak'@'localhost' identified by 'Jsefry6765';
grant all privileges on * . * to 'Deak'@'localhost' with grant option;
flush privileges;

create user 'Latisha'@'localhost' identified by '675hgdsf3';
create user 'Dean'@'localhost' identified by '76trjh567';
grant drop,delete,update on `DE-AK`.workDone to 'Deak'@'localhost';
grant drop,update on `DE-AK`.workDone to 'Latisha'@'localhost';
grant select on `DE-AK`.category to 'Dean'@'localhost';
flush privileges;

// search by category will be done later in sunday//