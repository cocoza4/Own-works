create table Breed(breedname varchar(64) primary key);

create table Owner(ownerid integer primary key,
		name varchar(32),
		phone varchar(16)
);

create table Kennel (kennelname varchar(64) primary key,
			address varchar(64),
			phone varchar(16)
);

create table Dog (dogid integer primary key, 
		name varchar(32) unique,
		ownerid integer references Owner(ownerid),
		kennelname varchar(64) references Kennel(kennelname),
		breedname varchar(64) references Breed(breedname),
		mothername varchar(64),
		fathername varchar(64)
);

create table Show (showname varchar(64),
			opendate varchar(12),
			closedate varchar(12),
		primary key(showname, opendate)
);

create table Attendance(dogid integer references Dog(dogid),
			showname varchar(64),
			opendate varchar(12),
			place integer,
		foreign key (showname, opendate) references Show(showname, opendate)
);
