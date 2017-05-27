using System.Net;
using System.Web.Mvc;
using SLN_62681097.Entities.Entities;
using SLN_62681097.Persistence.Repositories;

namespace SLN_62681097.MVC.Controllers
{
    public class TipoSolicitantesController : Controller
    {
        private UnityOfWork UOW = UnityOfWork.Instance;

        // GET: TipoSolicitantes
        public ActionResult Index()
        {
            return View(UOW.TipoSolicitantes.GetAll());
        }

        // GET: TipoSolicitantes/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoSolicitante tipoSolicitante = UOW.TipoSolicitantes.Get(id);
            if (tipoSolicitante == null)
            {
                return HttpNotFound();
            }
            return View(tipoSolicitante);
        }

        // GET: TipoSolicitantes/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: TipoSolicitantes/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "TipoSolicitanteId,Nombre")] TipoSolicitante tipoSolicitante)
        {
            if (ModelState.IsValid)
            {
                UOW.TipoSolicitantes.Add(tipoSolicitante);
                UOW.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipoSolicitante);
        }

        // GET: TipoSolicitantes/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoSolicitante tipoSolicitante = UOW.TipoSolicitantes.Get(id);
            if (tipoSolicitante == null)
            {
                return HttpNotFound();
            }
            return View(tipoSolicitante);
        }

        // POST: TipoSolicitantes/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "TipoSolicitanteId,Nombre")] TipoSolicitante tipoSolicitante)
        {
            if (ModelState.IsValid)
            {
                UOW.StateModified(tipoSolicitante);
                UOW.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(tipoSolicitante);
        }

        // GET: TipoSolicitantes/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            TipoSolicitante tipoSolicitante = UOW.TipoSolicitantes.Get(id);
            if (tipoSolicitante == null)
            {
                return HttpNotFound();
            }
            return View(tipoSolicitante);
        }

        // POST: TipoSolicitantes/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            TipoSolicitante tipoSolicitante = UOW.TipoSolicitantes.Get(id);
            UOW.TipoSolicitantes.Delete(tipoSolicitante);
            UOW.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                //UOW.Dispose();
            }
            //base.Dispose(disposing);
        }
    }
}
