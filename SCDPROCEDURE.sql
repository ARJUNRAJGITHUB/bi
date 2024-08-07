create table forscd(id int identity(1,1),fname varchar(10),lname varchar(20), flag varchar(10))

insert into forscd VALUES('ARJUN','RAJ','NO'),('SALAS','SAGAR','NO'),('AKASH','PANAKA;','NO'),('ANJANA','SASI','NO')

CREATE PROCEDURE SCD2(@ID INT,@FNAME VARCHAR(10),@LNAME VARCHAR(10))
AS
BEGIN
	IF(@ID IN (SELECT ID FROM forscd))
		BEGIN
			IF(@FNAME IN (SELECT fname from forscd where id=@ID))
			begin
				if(@LNAME in (select lname from forscd where id=@ID))
					begin
						print('data already available')
					end
						else
						begin
						update forscd
						set flag='NO'
						where id=@ID
						end
			end
				else
						begin
						update forscd
						set flag='NO'
						where id=@ID
						end
		end
		insert into forscd values(@FNAME,@LNAME,'YES')
	END

	select * from forscd
	exec SCD2 1,'ARJUN','C'