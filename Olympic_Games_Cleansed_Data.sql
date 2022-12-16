/****** Script for SelectTopNRows command from SSMS  ******/
SELECT
       [ID]
      ,[Name] as 'Competitor Name'
      ,CASE WHEN SEX= 'M' THEN 'Male' ELSE 'Female' END AS Sex
      ,[Age]
	  , CASE   WHEN [Age] < 18 THEN 'Under 18'
	           WHEN [Age] BETWEEN 18 AND 25 THEN '18-25'
			   WHEN [Age] BETWEEN 25 AND 30 THEN '25-30'
			   WHEN [Age] >30 THEN 'Over 30'
		END AS [Age Grouping]
      ,[Height]
      ,[Weight]
	  ,[NOC] AS 'Nation Code'
      ,CHARINDEX(' ', Games)-1 as 'Example 1'
	  ,CHARINDEX(' ',Reverse(Games))-1 as 'Example 2'
	  ,LEFT(Games, CHARINDEX(' ', Games)-1) as 'Year'
	  ,RIGHT(Games, CHARINDEX(' ',REVERSE(Games))-1) as 'Season'
	  ,[Games]
      --,[City]
      ,[Sport]
      ,[Event]
      ,CASE WHEN Medal ='NA' THEN 'Not Registered' ELSE Medal END AS MEDAL
      FROM [olympic_games].[dbo].[athletes_event_results]
	  WHERE RIGHT(Games,CHARINDEX(' ',REVERSE(Games))-1)= 'Summer'
