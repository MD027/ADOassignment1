USE Sample

Create Table FootballWorldCup
(
 MatchId int  primary key,
 TeamName1 nvarchar(20),
 TeamNmae2 nvarchar(20),
 MatchStatus nvarchar(10),
 WinningTeam nvarchar(20),
 points int 
)


Insert into FootballWorldCup values(1001,'Italy','France','Win','France',4)
Insert into FootballWorldCup values(1002,'Brazil','Portugal','Draw',NULL,2)
Insert into FootballWorldCup values(1003,'England','Japan','Win','England',4)
Insert into FootballWorldCup values(1004,'USA','Russia','Win','Russia',4)
Insert into FootballWorldCup values(1005,'Portugal','Italy','Draw',NULL,2)
Insert into FootballWorldCup values(1006,'Brazil','France','Win','Brazil',4)
Insert into FootballWorldCup values(1007,'England','Russia','Win','Russia',4)
Insert into FootballWorldCup values(1008,'Japan','USA','Draw',NULL,2)


Select * From FootballWorldCup

Create Procedure addResult
 @MatchId int ,
 @TeamName1 nvarchar(20),
 @TeamNmae2 nvarchar(20),
 @MatchStatus nvarchar(10),
 @WinningTeam nvarchar(20),
 @points int 
 as 
 Begin
  Insert into FootballWorldCup values(@MatchId,@TeamName1,@TeamNmae2,@MatchStatus,@WinningTeam,@points)
  End

  SELECT WinningTeam
  FROM FootballWorldCup
  WHERE MatchStatus='Win';

  SELECT TeamName1,TeamNmae2
  FROM FootballWorldCup
  WHERE MatchStatus='Draw';

  SELECT * FROM FootballWorldCup
  WHERE TeamName1='Japan' OR TeamNmae2='Japan';