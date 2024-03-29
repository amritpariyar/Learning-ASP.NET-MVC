
CREATE TABLE [Province](
	[Id] [int] IDENTITY(1,1) Primary Key,
	[Name] [nvarchar](50) NOT NULL
)

CREATE TABLE [UserProfile](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY,
	[FullName] [nvarchar](255) NOT NULL,
	[Province] [int] FOREIGN KEY REFERENCES Province(Id),
	[Address] [nvarchar](max) NULL,
	[DateOfBirth] [nvarchar](20) NULL,
	[Email] [nvarchar](255) NULL,
	[Mobile] [nvarchar](100) NULL,
	[MaritalStatus] [nvarchar](20) NULL,
	[Gender] [nvarchar](10) NULL,
	[Photo] [nvarchar](255) NULL,
	[Status] [bit] NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CreatedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [nvarchar](max) NULL
)

CREATE TABLE [UserQualification](
	[Id] [int] IDENTITY(1,1) PRIMARY KEY,
	[UserProfileId] [int] FOREIGN KEY REFERENCES UserProfile(Id),
	[IsEducation] [bit] NULL,
	[IsCertification] [bit] NULL,
	[Title] [nvarchar](255) NULL,
	[Institution] [nvarchar](255) NULL,
	[ReceiveDate] [nvarchar](20) NULL,
	[FilePath] [nvarchar](max) NULL,
	[CreatedBy] [nvarchar](255) NULL,
	[CraetedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](max) NULL,
	[ModifiedDate] [nvarchar](max) NULL,
	[DeletedBy] [nvarchar](255) NULL,
	[DeletedDate] [datetime] NULL
)
