USE [master]
GO
CREATE DATABASE [StuCrsDB]
USE [StuCrsDB]
CREATE TABLE [dbo].[StudentAttendance](
	[rollno] [int] NOT NULL,
	[subject] [varchar](50) NOT NULL,
	[present] [char](1) NULL,
	[date] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rollno] ASC,
	[subject] ASC,
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/** Object:  Table [dbo].[StudentCourse]    Script Date: 1/25/2024 9:07:36 PM **/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentCourse](
	[rollno] [int] NOT NULL,
	[name] [varchar](50) NULL,
	[class] [int] NULL,
	[subject] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[rollno] ASC,
	[subject] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[StudentAttendance] ([rollno], [subject], [present], [date]) VALUES (1, N'CN', N'A', CAST(N'2024-01-23' AS Date))
GO
INSERT [dbo].[StudentAttendance] ([rollno], [subject], [present], [date]) VALUES (1, N'VP', N'A', CAST(N'2024-01-22' AS Date))
GO
INSERT [dbo].[StudentAttendance] ([rollno], [subject], [present], [date]) VALUES (1, N'WE', N'A', CAST(N'2024-01-22' AS Date))
GO
INSERT [dbo].[StudentAttendance] ([rollno], [subject], [present], [date]) VALUES (2, N'VP', N'P', CAST(N'2024-01-22' AS Date))
GO
INSERT [dbo].[StudentAttendance] ([rollno], [subject], [present], [date]) VALUES (2, N'WE', N'P', CAST(N'2024-01-22' AS Date))
GO
INSERT [dbo].[StudentAttendance] ([rollno], [subject], [present], [date]) VALUES (3, N'VP', N'A', CAST(N'2024-01-22' AS Date))
GO
INSERT [dbo].[StudentAttendance] ([rollno], [subject], [present], [date]) VALUES (3, N'WE', N'P', CAST(N'2024-01-22' AS Date))
GO
INSERT [dbo].[StudentCourse] ([rollno], [name], [class], [subject]) VALUES (1, N'Hassan', 1, N'CN')
GO
INSERT [dbo].[StudentCourse] ([rollno], [name], [class], [subject]) VALUES (1, N'Hassan', 1, N'VP')
GO
INSERT [dbo].[StudentCourse] ([rollno], [name], [class], [subject]) VALUES (1, N'Hassan', 1, N'WE')
GO
INSERT [dbo].[StudentCourse] ([rollno], [name], [class], [subject]) VALUES (2, N'Attique', 1, N'VP')
GO
INSERT [dbo].[StudentCourse] ([rollno], [name], [class], [subject]) VALUES (2, N'Attique', 1, N'WE')
GO
INSERT [dbo].[StudentCourse] ([rollno], [name], [class], [subject]) VALUES (3, N'Abdullah', 1, N'VP')
GO
INSERT [dbo].[StudentCourse] ([rollno], [name], [class], [subject]) VALUES (3, N'Abdullah', 1, N'WE')
GO
USE [master]
GO
ALTER DATABASE [StuCrsDB] SET  READ_WRITE 
GO