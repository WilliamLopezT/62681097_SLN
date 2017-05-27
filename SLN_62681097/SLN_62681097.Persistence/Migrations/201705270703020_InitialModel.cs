namespace SLN_62681097.Persistence.Migrations
{
    using System;
    using System.Data.Entity.Migrations;
    
    public partial class InitialModel : DbMigration
    {
        public override void Up()
        {
            CreateTable(
                "dbo.Actividads",
                c => new
                    {
                        ActividadId = c.Int(nullable: false, identity: true),
                        Inicio = c.DateTime(nullable: false),
                        Fin = c.DateTime(nullable: false),
                        Curso = c.String(),
                        TecnicoId = c.Int(),
                        Comentario = c.String(),
                        TipoMantenimientoId = c.Int(),
                        Discriminator = c.String(nullable: false, maxLength: 128),
                        Laboratorio_LaboratorioId = c.Int(),
                        Solicitante_SolicitanteId = c.Int(),
                        TipoActividad_TipoActividadId = c.Int(),
                    })
                .PrimaryKey(t => t.ActividadId)
                .ForeignKey("dbo.Laboratorios", t => t.Laboratorio_LaboratorioId)
                .ForeignKey("dbo.Solicitantes", t => t.Solicitante_SolicitanteId)
                .ForeignKey("dbo.TipoActividads", t => t.TipoActividad_TipoActividadId)
                .ForeignKey("dbo.Tecnicoes", t => t.TecnicoId, cascadeDelete: true)
                .ForeignKey("dbo.TipoMantenimientoes", t => t.TipoMantenimientoId, cascadeDelete: true)
                .Index(t => t.TecnicoId)
                .Index(t => t.TipoMantenimientoId)
                .Index(t => t.Laboratorio_LaboratorioId)
                .Index(t => t.Solicitante_SolicitanteId)
                .Index(t => t.TipoActividad_TipoActividadId);
            
            CreateTable(
                "dbo.Laboratorios",
                c => new
                    {
                        LaboratorioId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 50),
                        Piso = c.Byte(nullable: false),
                        Estado = c.String(),
                        Capacidad = c.Byte(nullable: false),
                    })
                .PrimaryKey(t => t.LaboratorioId);
            
            CreateTable(
                "dbo.EstacionTrabajoes",
                c => new
                    {
                        EstacionTrabajoId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 50),
                        LaboratorioId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.EstacionTrabajoId)
                .ForeignKey("dbo.Laboratorios", t => t.LaboratorioId, cascadeDelete: true)
                .Index(t => t.LaboratorioId);
            
            CreateTable(
                "dbo.Hardwares",
                c => new
                    {
                        HardwareId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 100),
                        TipoHardwareId = c.Int(nullable: false),
                        EstacionTrabajo_EstacionTrabajoId = c.Int(),
                    })
                .PrimaryKey(t => t.HardwareId)
                .ForeignKey("dbo.TipoHardwares", t => t.TipoHardwareId, cascadeDelete: true)
                .ForeignKey("dbo.EstacionTrabajoes", t => t.EstacionTrabajo_EstacionTrabajoId)
                .Index(t => t.TipoHardwareId)
                .Index(t => t.EstacionTrabajo_EstacionTrabajoId);
            
            CreateTable(
                "dbo.TipoHardwares",
                c => new
                    {
                        TipoHardwareId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(),
                    })
                .PrimaryKey(t => t.TipoHardwareId);
            
            CreateTable(
                "dbo.Tecnicoes",
                c => new
                    {
                        TecnicoId = c.Int(nullable: false, identity: true),
                        ApellidoPaterno = c.String(),
                        ApellidoMaterno = c.String(),
                        Nombres = c.String(),
                    })
                .PrimaryKey(t => t.TecnicoId);
            
            CreateTable(
                "dbo.Solicitantes",
                c => new
                    {
                        SolicitanteId = c.Int(nullable: false, identity: true),
                        ApellidoPaterno = c.String(nullable: false, maxLength: 35),
                        ApellidoMaterno = c.String(nullable: false, maxLength: 35),
                        Nombres = c.String(nullable: false, maxLength: 35),
                        TipoSolicitanteId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.SolicitanteId)
                .ForeignKey("dbo.TipoSolicitantes", t => t.TipoSolicitanteId, cascadeDelete: true)
                .Index(t => t.TipoSolicitanteId);
            
            CreateTable(
                "dbo.TipoSolicitantes",
                c => new
                    {
                        TipoSolicitanteId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(),
                    })
                .PrimaryKey(t => t.TipoSolicitanteId);
            
            CreateTable(
                "dbo.TipoActividads",
                c => new
                    {
                        TipoActividadId = c.Int(nullable: false, identity: true),
                        Descripcion = c.String(),
                    })
                .PrimaryKey(t => t.TipoActividadId);
            
            CreateTable(
                "dbo.TipoMantenimientoes",
                c => new
                    {
                        TipoMantenimientoId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(),
                        TipoEventoId = c.Int(nullable: false),
                    })
                .PrimaryKey(t => t.TipoMantenimientoId)
                .ForeignKey("dbo.TipoEventoes", t => t.TipoEventoId, cascadeDelete: true)
                .Index(t => t.TipoEventoId);
            
            CreateTable(
                "dbo.TipoEventoes",
                c => new
                    {
                        TipoEventoId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(),
                    })
                .PrimaryKey(t => t.TipoEventoId);
            
            CreateTable(
                "dbo.Softwares",
                c => new
                    {
                        SoftwareId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(nullable: false, maxLength: 100),
                        TipoSoftwareId = c.Int(nullable: false),
                        Criticidad = c.Byte(nullable: false),
                    })
                .PrimaryKey(t => t.SoftwareId)
                .ForeignKey("dbo.TipoSoftwares", t => t.TipoSoftwareId, cascadeDelete: true)
                .Index(t => t.TipoSoftwareId);
            
            CreateTable(
                "dbo.TipoSoftwares",
                c => new
                    {
                        TipoSoftwareId = c.Int(nullable: false, identity: true),
                        Nombre = c.String(),
                    })
                .PrimaryKey(t => t.TipoSoftwareId);
            
            CreateTable(
                "dbo.LaboratorioTecnicos",
                c => new
                    {
                        Id_Laboratorio = c.Int(nullable: false),
                        Id_Tecnico = c.Int(nullable: false),
                    })
                .PrimaryKey(t => new { t.Id_Laboratorio, t.Id_Tecnico })
                .ForeignKey("dbo.Laboratorios", t => t.Id_Laboratorio, cascadeDelete: true)
                .ForeignKey("dbo.Tecnicoes", t => t.Id_Tecnico, cascadeDelete: true)
                .Index(t => t.Id_Laboratorio)
                .Index(t => t.Id_Tecnico);
            
        }
        
        public override void Down()
        {
            DropForeignKey("dbo.Softwares", "TipoSoftwareId", "dbo.TipoSoftwares");
            DropForeignKey("dbo.Actividads", "TipoMantenimientoId", "dbo.TipoMantenimientoes");
            DropForeignKey("dbo.TipoMantenimientoes", "TipoEventoId", "dbo.TipoEventoes");
            DropForeignKey("dbo.Actividads", "TecnicoId", "dbo.Tecnicoes");
            DropForeignKey("dbo.Actividads", "TipoActividad_TipoActividadId", "dbo.TipoActividads");
            DropForeignKey("dbo.Actividads", "Solicitante_SolicitanteId", "dbo.Solicitantes");
            DropForeignKey("dbo.Solicitantes", "TipoSolicitanteId", "dbo.TipoSolicitantes");
            DropForeignKey("dbo.LaboratorioTecnicos", "Id_Tecnico", "dbo.Tecnicoes");
            DropForeignKey("dbo.LaboratorioTecnicos", "Id_Laboratorio", "dbo.Laboratorios");
            DropForeignKey("dbo.EstacionTrabajoes", "LaboratorioId", "dbo.Laboratorios");
            DropForeignKey("dbo.Hardwares", "EstacionTrabajo_EstacionTrabajoId", "dbo.EstacionTrabajoes");
            DropForeignKey("dbo.Hardwares", "TipoHardwareId", "dbo.TipoHardwares");
            DropForeignKey("dbo.Actividads", "Laboratorio_LaboratorioId", "dbo.Laboratorios");
            DropIndex("dbo.LaboratorioTecnicos", new[] { "Id_Tecnico" });
            DropIndex("dbo.LaboratorioTecnicos", new[] { "Id_Laboratorio" });
            DropIndex("dbo.Softwares", new[] { "TipoSoftwareId" });
            DropIndex("dbo.TipoMantenimientoes", new[] { "TipoEventoId" });
            DropIndex("dbo.Solicitantes", new[] { "TipoSolicitanteId" });
            DropIndex("dbo.Hardwares", new[] { "EstacionTrabajo_EstacionTrabajoId" });
            DropIndex("dbo.Hardwares", new[] { "TipoHardwareId" });
            DropIndex("dbo.EstacionTrabajoes", new[] { "LaboratorioId" });
            DropIndex("dbo.Actividads", new[] { "TipoActividad_TipoActividadId" });
            DropIndex("dbo.Actividads", new[] { "Solicitante_SolicitanteId" });
            DropIndex("dbo.Actividads", new[] { "Laboratorio_LaboratorioId" });
            DropIndex("dbo.Actividads", new[] { "TipoMantenimientoId" });
            DropIndex("dbo.Actividads", new[] { "TecnicoId" });
            DropTable("dbo.LaboratorioTecnicos");
            DropTable("dbo.TipoSoftwares");
            DropTable("dbo.Softwares");
            DropTable("dbo.TipoEventoes");
            DropTable("dbo.TipoMantenimientoes");
            DropTable("dbo.TipoActividads");
            DropTable("dbo.TipoSolicitantes");
            DropTable("dbo.Solicitantes");
            DropTable("dbo.Tecnicoes");
            DropTable("dbo.TipoHardwares");
            DropTable("dbo.Hardwares");
            DropTable("dbo.EstacionTrabajoes");
            DropTable("dbo.Laboratorios");
            DropTable("dbo.Actividads");
        }
    }
}
