USE [Futbol]
GO
/****** Object:  Table [dbo].[Equipos]    Script Date: 13/12/2023 08:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipos](
	[IdEquipo] [int] IDENTITY(1,1) NOT NULL,
	[NombreEquipo] [nchar](100) NOT NULL,
	[IdPais] [int] NOT NULL,
	[IdLiga] [int] NOT NULL,
 CONSTRAINT [PK_Equipos] PRIMARY KEY CLUSTERED 
(
	[IdEquipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Jugadores]    Script Date: 13/12/2023 08:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Jugadores](
	[IdJugador] [int] IDENTITY(1,1) NOT NULL,
	[IdPais] [int] NOT NULL,
	[NombreJugador] [nchar](100) NOT NULL,
	[TorneosGanados] [int] NULL,
	[IdEquipo] [int] NULL,
 CONSTRAINT [PK_Jugadores] PRIMARY KEY CLUSTERED 
(
	[IdJugador] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Liga]    Script Date: 13/12/2023 08:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Liga](
	[IdLiga] [int] IDENTITY(1,1) NOT NULL,
	[IdPais] [int] NOT NULL,
	[NombreLiga] [nchar](100) NOT NULL,
	[CantidadDeEquipos] [int] NOT NULL,
 CONSTRAINT [PK_Liga] PRIMARY KEY CLUSTERED 
(
	[IdLiga] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 13/12/2023 08:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[IdPais] [int] IDENTITY(1,1) NOT NULL,
	[NombrePais] [nchar](100) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[IdPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TorneosGanados]    Script Date: 13/12/2023 08:45:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TorneosGanados](
	[idTorneos] [int] IDENTITY(1,1) NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[NombreTorneo] [nchar](100) NOT NULL,
	[Año] [date] NOT NULL,
 CONSTRAINT [PK_TorneosGanados] PRIMARY KEY CLUSTERED 
(
	[idTorneos] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Equipos] ON 

INSERT [dbo].[Equipos] ([IdEquipo], [NombreEquipo], [IdPais], [IdLiga]) VALUES (3, N'Real Madrid                                                                                         ', 3, 3)
INSERT [dbo].[Equipos] ([IdEquipo], [NombreEquipo], [IdPais], [IdLiga]) VALUES (6, N'San Lorenzo                                                                                         ', 1, 7)
INSERT [dbo].[Equipos] ([IdEquipo], [NombreEquipo], [IdPais], [IdLiga]) VALUES (9, N'Sao Pablo                                                                                           ', 2, 8)
SET IDENTITY_INSERT [dbo].[Equipos] OFF
GO
SET IDENTITY_INSERT [dbo].[Jugadores] ON 

INSERT [dbo].[Jugadores] ([IdJugador], [IdPais], [NombreJugador], [TorneosGanados], [IdEquipo]) VALUES (3, 3, N'Sergio Ramos                                                                                        ', NULL, 3)
INSERT [dbo].[Jugadores] ([IdJugador], [IdPais], [NombreJugador], [TorneosGanados], [IdEquipo]) VALUES (6, 1, N'Barrios                                                                                             ', NULL, 6)
INSERT [dbo].[Jugadores] ([IdJugador], [IdPais], [NombreJugador], [TorneosGanados], [IdEquipo]) VALUES (7, 2, N'Lucas Moura                                                                                         ', NULL, 9)
SET IDENTITY_INSERT [dbo].[Jugadores] OFF
GO
SET IDENTITY_INSERT [dbo].[Liga] ON 

INSERT [dbo].[Liga] ([IdLiga], [IdPais], [NombreLiga], [CantidadDeEquipos]) VALUES (3, 3, N'La Liga                                                                                             ', 30)
INSERT [dbo].[Liga] ([IdLiga], [IdPais], [NombreLiga], [CantidadDeEquipos]) VALUES (7, 1, N'Superliga Argentina                                                                                 ', 20)
INSERT [dbo].[Liga] ([IdLiga], [IdPais], [NombreLiga], [CantidadDeEquipos]) VALUES (8, 2, N'Brasileirao                                                                                         ', 18)
SET IDENTITY_INSERT [dbo].[Liga] OFF
GO
SET IDENTITY_INSERT [dbo].[Pais] ON 

INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (1, N'Argentina                                                                                           ')
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (2, N'Brasil                                                                                              ')
INSERT [dbo].[Pais] ([IdPais], [NombrePais]) VALUES (3, N'España                                                                                              ')
SET IDENTITY_INSERT [dbo].[Pais] OFF
GO
SET IDENTITY_INSERT [dbo].[TorneosGanados] ON 

INSERT [dbo].[TorneosGanados] ([idTorneos], [IdEquipo], [NombreTorneo], [Año]) VALUES (2, 6, N'CopaLibertadores                                                                                    ', CAST(N'2014-08-13' AS Date))
INSERT [dbo].[TorneosGanados] ([idTorneos], [IdEquipo], [NombreTorneo], [Año]) VALUES (4, 3, N'Champions                                                                                           ', CAST(N'2014-05-24' AS Date))
INSERT [dbo].[TorneosGanados] ([idTorneos], [IdEquipo], [NombreTorneo], [Año]) VALUES (5, 9, N'CopaDeBrasil                                                                                        ', CAST(N'2021-11-09' AS Date))
INSERT [dbo].[TorneosGanados] ([idTorneos], [IdEquipo], [NombreTorneo], [Año]) VALUES (6, 6, N'LigaApertura                                                                                        ', CAST(N'2014-08-02' AS Date))
INSERT [dbo].[TorneosGanados] ([idTorneos], [IdEquipo], [NombreTorneo], [Año]) VALUES (7, 3, N'LaLiga                                                                                              ', CAST(N'2022-10-09' AS Date))
INSERT [dbo].[TorneosGanados] ([idTorneos], [IdEquipo], [NombreTorneo], [Año]) VALUES (8, 9, N'Brasileirao                                                                                         ', CAST(N'2001-03-07' AS Date))
SET IDENTITY_INSERT [dbo].[TorneosGanados] OFF
GO
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Liga] FOREIGN KEY([IdLiga])
REFERENCES [dbo].[Liga] ([IdLiga])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Liga]
GO
ALTER TABLE [dbo].[Equipos]  WITH CHECK ADD  CONSTRAINT [FK_Equipos_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Equipos] CHECK CONSTRAINT [FK_Equipos_Pais]
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_Equipos] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipos] ([IdEquipo])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_Equipos]
GO
ALTER TABLE [dbo].[Jugadores]  WITH CHECK ADD  CONSTRAINT [FK_Jugadores_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Jugadores] CHECK CONSTRAINT [FK_Jugadores_Pais]
GO
ALTER TABLE [dbo].[Liga]  WITH CHECK ADD  CONSTRAINT [FK_Liga_Pais] FOREIGN KEY([IdPais])
REFERENCES [dbo].[Pais] ([IdPais])
GO
ALTER TABLE [dbo].[Liga] CHECK CONSTRAINT [FK_Liga_Pais]
GO
ALTER TABLE [dbo].[TorneosGanados]  WITH CHECK ADD  CONSTRAINT [FK_TorneosGanados_Equipos] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipos] ([IdEquipo])
GO
ALTER TABLE [dbo].[TorneosGanados] CHECK CONSTRAINT [FK_TorneosGanados_Equipos]
GO
