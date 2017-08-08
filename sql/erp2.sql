--login记录表
CREATE TABLE [dbo].[tslog](
[autoId] [int] IDENTITY(10000001,1) NOT NULL,

[userId] [varchar](10) NOT NULL,
[userAction] [varchar](50) NOT NULL,
[actionTime] [datetime] not null DEFAULT getdate(),


PRIMARY KEY (autoId)
)

CREATE TABLE [dbo].[tsuseragent](
[autoId] [int] IDENTITY(10000001,1) NOT NULL,

[userId] [varchar](10) NOT NULL,
[userIp] [varchar](40) NULL,
[userAgent] [varchar](200) NULL,
[userHostName] [varchar](50) NULL,

[actionTime] [datetime] not null DEFAULT getdate(),
PRIMARY KEY (autoId)
)

--role
CREATE TABLE [dbo].[tsrole](
[autoId] [int] IDENTITY(10001,1) NOT NULL,
[roleId]  AS ('ROL'+CONVERT([char](5), [AutoID])) PERSISTED,

[roleCode] [varchar](10) NOT NULL,
[roleName] [nvarchar](40) NOT NULL,

[lastModifiedBy] [nvarchar](50) null,
[lastModifiedDate] [datetime] null,
[createBy] [nvarchar](50) null,
[createDate] [datetime] null DEFAULT getdate(),
PRIMARY KEY (autoId)
)
--userRole
CREATE TABLE [dbo].[userRole](
[autoId] [int] IDENTITY(10001,1) NOT NULL,

[roleCode] [varchar](10) NOT NULL,
[gonghao] [varchar](10) NOT NULL,

[lastModifiedBy] [nvarchar](50) null,
[lastModifiedDate] [datetime] null,
[createBy] [nvarchar](50) null,
[createDate] [datetime] null DEFAULT getdate(),
PRIMARY KEY (autoId)
)
