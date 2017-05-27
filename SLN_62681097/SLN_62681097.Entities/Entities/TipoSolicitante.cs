using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;

namespace SLN_62681097.Entities.Entities
{
    public class TipoSolicitante
    {
        public int TipoSolicitanteId { get; set; }
        public String Nombre { get; set; }
        public ICollection<Solicitante> Solicitantes { get; set; }

        public TipoSolicitante()
        {
            Solicitantes = new Collection<Solicitante>();
        }
    }
}
