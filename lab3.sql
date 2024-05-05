-- TASK 3 : Inserting data into tables and Updating data of tables: 
-- 1) Enter the following data in the respective tables. 
	
    use cms2080;
    select * from department ;
    
    insert into department values(1,"Computer",100);
    insert into department values(2,"Mathematics",200);
    insert into department values(3,"Economics",300);
    insert into department values(4,"Account",400);
    insert into department values(5,"Physics",500);
    
    select * from student;
    
    insert into student values 
    (10,"Maya","Palpa",1),
	(11,"Abin","Ktm",2),
    (12,"Aarav","Ktm",1),
    (13,"Ashna","Palpa",3),
    (14,"Anuj","Pokhara",4),
    (15,"Manish","Banepa",2),
    (16,"Pinky","Ktm",1);
    
    select * from staff;
    
    insert into staff values (11,"Mohan",1);
    insert into staff values (22,"Pratima",2);
    insert into staff values (33,"Madan",1);
    insert into staff values (44,"Kamala",3);
    insert into staff values (55,"Sandhya",4);
    insert into staff values (66,"Umesh",2);
    insert into staff values (77,"Ramesh",1);
    
    select * from subject;
    
     insert into subject values
     (20,"DBMS","D-20",11),
     (21,"C++","C-21",22),
     (22,"NM","N-22",11),
     (23,"TOC","T-23",77),
     (24,"PHP","P-24",44),
     (25,"AI","A-25",33),
     (26,"ASP","A-26",55),
     (27,"CG","C-27",66),
     (28,"C-Prog","C-28",44);
    
   select * from marks;
   
   insert into marks values 
   (60,20,10),
   (55,21,12),
   (58,22,10),
   (49,20,13),
   (61,23,14),
   (67,22,13),
   (60,24,16),
   (55,26,15),
   (33,25,11);
    
-- 2) Change the dept_name of dept_id 3 to Statistics in department table.  
	
    select * from department;
    update department
    set dept_name='Statistics'
    where dept_id=3;
    
-- 3) Write a query to display all data of department, student, staff, subject and marks table.
	
    select * from department;
    select * from student;
    select * from staff;
    select * from subject;
    select * from marks;
    
    
  
    