USE [master]
GO
/****** Object:  Database [SLN_62681097]    Script Date: 05/27/2017 12:39:08 ******/
CREATE DATABASE [SLN_62681097] ON  PRIMARY 
( NAME = N'SLN_62681097', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SLN_62681097.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SLN_62681097_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\SLN_62681097_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SLN_62681097] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SLN_62681097].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SLN_62681097] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SLN_62681097] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SLN_62681097] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SLN_62681097] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SLN_62681097] SET ARITHABORT OFF
GO
ALTER DATABASE [SLN_62681097] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SLN_62681097] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SLN_62681097] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SLN_62681097] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SLN_62681097] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SLN_62681097] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SLN_62681097] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SLN_62681097] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SLN_62681097] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SLN_62681097] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SLN_62681097] SET  ENABLE_BROKER
GO
ALTER DATABASE [SLN_62681097] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SLN_62681097] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SLN_62681097] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SLN_62681097] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SLN_62681097] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SLN_62681097] SET READ_COMMITTED_SNAPSHOT ON
GO
ALTER DATABASE [SLN_62681097] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SLN_62681097] SET  READ_WRITE
GO
ALTER DATABASE [SLN_62681097] SET RECOVERY FULL
GO
ALTER DATABASE [SLN_62681097] SET  MULTI_USER
GO
ALTER DATABASE [SLN_62681097] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SLN_62681097] SET DB_CHAINING OFF
GO
USE [SLN_62681097]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Laboratorios]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Laboratorios](
	[LaboratorioId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[Piso] [tinyint] NOT NULL,
	[Estado] [nvarchar](max) NULL,
	[Capacidad] [tinyint] NOT NULL,
 CONSTRAINT [PK_dbo.Laboratorios] PRIMARY KEY CLUSTERED 
(
	[LaboratorioId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoSolicitantes]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoSolicitantes](
	[TipoSolicitanteId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoSolicitantes] PRIMARY KEY CLUSTERED 
(
	[TipoSolicitanteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoSoftwares]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoSoftwares](
	[TipoSoftwareId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoSoftwares] PRIMARY KEY CLUSTERED 
(
	[TipoSoftwareId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoHardwares]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoHardwares](
	[TipoHardwareId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoHardwares] PRIMARY KEY CLUSTERED 
(
	[TipoHardwareId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoEventoes]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoEventoes](
	[TipoEventoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoEventoes] PRIMARY KEY CLUSTERED 
(
	[TipoEventoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoActividads]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoActividads](
	[TipoActividadId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TipoActividads] PRIMARY KEY CLUSTERED 
(
	[TipoActividadId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tecnicoes]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tecnicoes](
	[TecnicoId] [int] IDENTITY(1,1) NOT NULL,
	[ApellidoPaterno] [nvarchar](max) NULL,
	[ApellidoMaterno] [nvarchar](max) NULL,
	[Nombres] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Tecnicoes] PRIMARY KEY CLUSTERED 
(
	[TecnicoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Solicitantes]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Solicitantes](
	[SolicitanteId] [int] IDENTITY(1,1) NOT NULL,
	[ApellidoPaterno] [nvarchar](35) NOT NULL,
	[ApellidoMaterno] [nvarchar](35) NOT NULL,
	[Nombres] [nvarchar](35) NOT NULL,
	[TipoSolicitanteId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.Solicitantes] PRIMARY KEY CLUSTERED 
(
	[SolicitanteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TipoSolicitanteId] ON [dbo].[Solicitantes] 
(
	[TipoSolicitanteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Softwares]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Softwares](
	[SoftwareId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[TipoSoftwareId] [int] NOT NULL,
	[Criticidad] [tinyint] NOT NULL,
 CONSTRAINT [PK_dbo.Softwares] PRIMARY KEY CLUSTERED 
(
	[SoftwareId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TipoSoftwareId] ON [dbo].[Softwares] 
(
	[TipoSoftwareId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LaboratorioTecnicos]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LaboratorioTecnicos](
	[Id_Laboratorio] [int] NOT NULL,
	[Id_Tecnico] [int] NOT NULL,
 CONSTRAINT [PK_dbo.LaboratorioTecnicos] PRIMARY KEY CLUSTERED 
(
	[Id_Laboratorio] ASC,
	[Id_Tecnico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Id_Laboratorio] ON [dbo].[LaboratorioTecnicos] 
(
	[Id_Laboratorio] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Id_Tecnico] ON [dbo].[LaboratorioTecnicos] 
(
	[Id_Tecnico] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoMantenimientoes]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoMantenimientoes](
	[TipoMantenimientoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](max) NULL,
	[TipoEventoId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.TipoMantenimientoes] PRIMARY KEY CLUSTERED 
(
	[TipoMantenimientoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TipoEventoId] ON [dbo].[TipoMantenimientoes] 
(
	[TipoEventoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EstacionTrabajoes]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EstacionTrabajoes](
	[EstacionTrabajoId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NOT NULL,
	[LaboratorioId] [int] NOT NULL,
 CONSTRAINT [PK_dbo.EstacionTrabajoes] PRIMARY KEY CLUSTERED 
(
	[EstacionTrabajoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_LaboratorioId] ON [dbo].[EstacionTrabajoes] 
(
	[LaboratorioId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Actividads]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Actividads](
	[ActividadId] [int] IDENTITY(1,1) NOT NULL,
	[Inicio] [datetime] NOT NULL,
	[Fin] [datetime] NOT NULL,
	[Curso] [nvarchar](max) NULL,
	[TecnicoId] [int] NULL,
	[Comentario] [nvarchar](max) NULL,
	[TipoMantenimientoId] [int] NULL,
	[Discriminator] [nvarchar](128) NOT NULL,
	[Laboratorio_LaboratorioId] [int] NULL,
	[Solicitante_SolicitanteId] [int] NULL,
	[TipoActividad_TipoActividadId] [int] NULL,
 CONSTRAINT [PK_dbo.Actividads] PRIMARY KEY CLUSTERED 
(
	[ActividadId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Laboratorio_LaboratorioId] ON [dbo].[Actividads] 
(
	[Laboratorio_LaboratorioId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_Solicitante_SolicitanteId] ON [dbo].[Actividads] 
(
	[Solicitante_SolicitanteId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TecnicoId] ON [dbo].[Actividads] 
(
	[TecnicoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TipoActividad_TipoActividadId] ON [dbo].[Actividads] 
(
	[TipoActividad_TipoActividadId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TipoMantenimientoId] ON [dbo].[Actividads] 
(
	[TipoMantenimientoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hardwares]    Script Date: 05/27/2017 12:39:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hardwares](
	[HardwareId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[TipoHardwareId] [int] NOT NULL,
	[EstacionTrabajo_EstacionTrabajoId] [int] NULL,
 CONSTRAINT [PK_dbo.Hardwares] PRIMARY KEY CLUSTERED 
(
	[HardwareId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_EstacionTrabajo_EstacionTrabajoId] ON [dbo].[Hardwares] 
(
	[EstacionTrabajo_EstacionTrabajoId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_TipoHardwareId] ON [dbo].[Hardwares] 
(
	[TipoHardwareId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK_dbo.Solicitantes_dbo.TipoSolicitantes_TipoSolicitanteId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Solicitantes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Solicitantes_dbo.TipoSolicitantes_TipoSolicitanteId] FOREIGN KEY([TipoSolicitanteId])
REFERENCES [dbo].[TipoSolicitantes] ([TipoSolicitanteId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Solicitantes] CHECK CONSTRAINT [FK_dbo.Solicitantes_dbo.TipoSolicitantes_TipoSolicitanteId]
GO
/****** Object:  ForeignKey [FK_dbo.Softwares_dbo.TipoSoftwares_TipoSoftwareId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Softwares]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Softwares_dbo.TipoSoftwares_TipoSoftwareId] FOREIGN KEY([TipoSoftwareId])
REFERENCES [dbo].[TipoSoftwares] ([TipoSoftwareId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Softwares] CHECK CONSTRAINT [FK_dbo.Softwares_dbo.TipoSoftwares_TipoSoftwareId]
GO
/****** Object:  ForeignKey [FK_dbo.LaboratorioTecnicos_dbo.Laboratorios_Id_Laboratorio]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[LaboratorioTecnicos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LaboratorioTecnicos_dbo.Laboratorios_Id_Laboratorio] FOREIGN KEY([Id_Laboratorio])
REFERENCES [dbo].[Laboratorios] ([LaboratorioId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LaboratorioTecnicos] CHECK CONSTRAINT [FK_dbo.LaboratorioTecnicos_dbo.Laboratorios_Id_Laboratorio]
GO
/****** Object:  ForeignKey [FK_dbo.LaboratorioTecnicos_dbo.Tecnicoes_Id_Tecnico]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[LaboratorioTecnicos]  WITH CHECK ADD  CONSTRAINT [FK_dbo.LaboratorioTecnicos_dbo.Tecnicoes_Id_Tecnico] FOREIGN KEY([Id_Tecnico])
REFERENCES [dbo].[Tecnicoes] ([TecnicoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[LaboratorioTecnicos] CHECK CONSTRAINT [FK_dbo.LaboratorioTecnicos_dbo.Tecnicoes_Id_Tecnico]
GO
/****** Object:  ForeignKey [FK_dbo.TipoMantenimientoes_dbo.TipoEventoes_TipoEventoId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[TipoMantenimientoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.TipoMantenimientoes_dbo.TipoEventoes_TipoEventoId] FOREIGN KEY([TipoEventoId])
REFERENCES [dbo].[TipoEventoes] ([TipoEventoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TipoMantenimientoes] CHECK CONSTRAINT [FK_dbo.TipoMantenimientoes_dbo.TipoEventoes_TipoEventoId]
GO
/****** Object:  ForeignKey [FK_dbo.EstacionTrabajoes_dbo.Laboratorios_LaboratorioId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[EstacionTrabajoes]  WITH CHECK ADD  CONSTRAINT [FK_dbo.EstacionTrabajoes_dbo.Laboratorios_LaboratorioId] FOREIGN KEY([LaboratorioId])
REFERENCES [dbo].[Laboratorios] ([LaboratorioId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[EstacionTrabajoes] CHECK CONSTRAINT [FK_dbo.EstacionTrabajoes_dbo.Laboratorios_LaboratorioId]
GO
/****** Object:  ForeignKey [FK_dbo.Actividads_dbo.Laboratorios_Laboratorio_LaboratorioId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Actividads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Actividads_dbo.Laboratorios_Laboratorio_LaboratorioId] FOREIGN KEY([Laboratorio_LaboratorioId])
REFERENCES [dbo].[Laboratorios] ([LaboratorioId])
GO
ALTER TABLE [dbo].[Actividads] CHECK CONSTRAINT [FK_dbo.Actividads_dbo.Laboratorios_Laboratorio_LaboratorioId]
GO
/****** Object:  ForeignKey [FK_dbo.Actividads_dbo.Solicitantes_Solicitante_SolicitanteId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Actividads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Actividads_dbo.Solicitantes_Solicitante_SolicitanteId] FOREIGN KEY([Solicitante_SolicitanteId])
REFERENCES [dbo].[Solicitantes] ([SolicitanteId])
GO
ALTER TABLE [dbo].[Actividads] CHECK CONSTRAINT [FK_dbo.Actividads_dbo.Solicitantes_Solicitante_SolicitanteId]
GO
/****** Object:  ForeignKey [FK_dbo.Actividads_dbo.Tecnicoes_TecnicoId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Actividads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Actividads_dbo.Tecnicoes_TecnicoId] FOREIGN KEY([TecnicoId])
REFERENCES [dbo].[Tecnicoes] ([TecnicoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actividads] CHECK CONSTRAINT [FK_dbo.Actividads_dbo.Tecnicoes_TecnicoId]
GO
/****** Object:  ForeignKey [FK_dbo.Actividads_dbo.TipoActividads_TipoActividad_TipoActividadId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Actividads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Actividads_dbo.TipoActividads_TipoActividad_TipoActividadId] FOREIGN KEY([TipoActividad_TipoActividadId])
REFERENCES [dbo].[TipoActividads] ([TipoActividadId])
GO
ALTER TABLE [dbo].[Actividads] CHECK CONSTRAINT [FK_dbo.Actividads_dbo.TipoActividads_TipoActividad_TipoActividadId]
GO
/****** Object:  ForeignKey [FK_dbo.Actividads_dbo.TipoMantenimientoes_TipoMantenimientoId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Actividads]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Actividads_dbo.TipoMantenimientoes_TipoMantenimientoId] FOREIGN KEY([TipoMantenimientoId])
REFERENCES [dbo].[TipoMantenimientoes] ([TipoMantenimientoId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Actividads] CHECK CONSTRAINT [FK_dbo.Actividads_dbo.TipoMantenimientoes_TipoMantenimientoId]
GO
/****** Object:  ForeignKey [FK_dbo.Hardwares_dbo.EstacionTrabajoes_EstacionTrabajo_EstacionTrabajoId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Hardwares]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Hardwares_dbo.EstacionTrabajoes_EstacionTrabajo_EstacionTrabajoId] FOREIGN KEY([EstacionTrabajo_EstacionTrabajoId])
REFERENCES [dbo].[EstacionTrabajoes] ([EstacionTrabajoId])
GO
ALTER TABLE [dbo].[Hardwares] CHECK CONSTRAINT [FK_dbo.Hardwares_dbo.EstacionTrabajoes_EstacionTrabajo_EstacionTrabajoId]
GO
/****** Object:  ForeignKey [FK_dbo.Hardwares_dbo.TipoHardwares_TipoHardwareId]    Script Date: 05/27/2017 12:39:09 ******/
ALTER TABLE [dbo].[Hardwares]  WITH CHECK ADD  CONSTRAINT [FK_dbo.Hardwares_dbo.TipoHardwares_TipoHardwareId] FOREIGN KEY([TipoHardwareId])
REFERENCES [dbo].[TipoHardwares] ([TipoHardwareId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hardwares] CHECK CONSTRAINT [FK_dbo.Hardwares_dbo.TipoHardwares_TipoHardwareId]
GO
