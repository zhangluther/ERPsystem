CREATE TABLE [dbo].[tsemployee](
[autoId] [int] IDENTITY(10001,1) NOT NULL,
[empId]  AS ('EMP'+CONVERT([char](5), [AutoID])) PERSISTED,

[gonghao] [varchar](6) NOT NULL,
[name] [nvarchar](50) Not NULL,
[password] [varchar](50) NOT NULL DEFAULT '123',

[lastModifiedBy] [nvarchar](50) null,
[lastModifiedDate] [datetime] null,
[createBy] [nvarchar](50) null,
[createDate] [datetime] null DEFAULT getdate(),
PRIMARY KEY (empId)
)

CREATE TABLE [dbo].[tsmenu](
[autoId] [int] IDENTITY(10001,1) NOT NULL,
[menuId]  AS ('MNU'+CONVERT([char](5), [AutoID])) PERSISTED,

[areaId] [varchar](8) NOT NULL DEFAULT 'CHN',
[displayName] [nvarchar](50) NOT null,
[linkUrl] [varchar](60) NULL,
[selfId] [varchar](8) NOT NULL,
[fatherId] [varchar](8) NOT NULL DEFAULT '0',
[icon] [varchar](30) NULL,
[tips] [nvarchar](60) NULL,

[lastModifiedBy] [nvarchar](50) null,
[lastModifiedDate] [datetime] null,
[createBy] [nvarchar](50) null,
[createDate] [datetime] null DEFAULT getdate(),
PRIMARY KEY (menuId)
)


CREATE TABLE [dbo].[tsauthority](
[autoId] [int] IDENTITY(10001,1) NOT NULL,
[authId]  AS ('AUT'+CONVERT([char](5), [AutoID])) PERSISTED,

[empId] [varchar](10) NOT NULL,
[selfId] [varchar](8) NOT NULL,
[authority] [bit] NOT NULL DEFAULT 0,

[lastModifiedBy] [nvarchar](50) null,
[lastModifiedDate] [datetime] null,
[createBy] [nvarchar](50) null,
[createDate] [datetime] null DEFAULT getdate(),
PRIMARY KEY (autoId)
)

CREATE TABLE [dbo].[tsdepartment](
[autoId] [int] IDENTITY(1001,1) NOT NULL,
[depId]  AS ('DEP'+CONVERT([char](4), [AutoID])) PERSISTED,

[bumenId] [varchar](8) NOT NULL,
[depaName] [nvarchar](50) NOT NULL,
[description] [nvarchar](50) NULL,

[lastModifiedBy] [nvarchar](50) null,
[lastModifiedDate] [datetime] null,
[createBy] [nvarchar](50) null,
[createDate] [datetime] null DEFAULT getdate(),
PRIMARY KEY (autoId)
)

CREATE TABLE [dbo].[tsgroup](
[autoId] [int] IDENTITY(1001,1) NOT NULL,
[groupId]  AS ('GRP'+CONVERT([char](4), [AutoID])) PERSISTED,

[groupName] [nvarchar](30) NOT NULL,
[description] [nvarchar](100) NULL,

[lastModifiedBy] [nvarchar](50) null,
[lastModifiedDate] [datetime] null,
[createBy] [nvarchar](50) null,
[createDate] [datetime] null DEFAULT getdate(),
PRIMARY KEY (autoId)
)

CREATE TABLE [dbo].[tslog](
[autoId] [int] IDENTITY(10000001,1) NOT NULL,

[eventType] [nvarchar](30) null,
[eventObject] [nvarchar](30) null,
[eventBy] [nvarchar](50) null,
[eventDate] [datetime] null DEFAULT getdate(),
PRIMARY KEY (autoId)
)