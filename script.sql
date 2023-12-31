USE [PROGRA2]
GO
/****** Object:  Table [dbo].[Estudiante]    Script Date: 15/10/2023 15:31:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estudiante](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombres] [varchar](50) NOT NULL,
	[Apellidos] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Sexo] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estudiante] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Estudiante] ON 

INSERT [dbo].[Estudiante] ([Id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (1, N'Amy', N'Lara', 20, N'F')
INSERT [dbo].[Estudiante] ([Id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (2, N'Consuelo', N'Castro', 21, N'F')
INSERT [dbo].[Estudiante] ([Id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (3, N'Robert', N'Mejia', 23, N'M')
INSERT [dbo].[Estudiante] ([Id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (4, N'Saul', N'Siibrian', 19, N'M')
INSERT [dbo].[Estudiante] ([Id], [Nombres], [Apellidos], [Edad], [Sexo]) VALUES (5, N'Consuelo', N'Alberto', 20, N'F')
SET IDENTITY_INSERT [dbo].[Estudiante] OFF
GO
