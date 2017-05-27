using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Entities.Entities
{
    public class Solicitante
    {
        public int SolicitanteId { get; set; }
        public String ApellidoPaterno { get; set; }
        public String ApellidoMaterno { get; set; }
        public String Nombres { get; set; }
        public TipoSolicitante TipoSolicitante { get; set; } // Docente / Administrativo.
        public int TipoSolicitanteId { get; set; }

        public String GetNombreCompleto()
        {
            if (TipoSolicitante.Nombre == "Docente")
            {
                return this.ApellidoPaterno + " " + this.ApellidoMaterno + ", " + this.Nombres + " (Docente)";
            }
            else
            {
                return this.ApellidoPaterno + " " + this.ApellidoMaterno + ", " + this.Nombres + " (Administrativo)";
            }
        }

    }
}