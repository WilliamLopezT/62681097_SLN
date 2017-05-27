using System;
using System.Collections.Generic;
using System.Linq;
using System.Linq.Expressions;
using System.Text;
using System.Threading.Tasks;

namespace SLN_62681097.Entities.IRepositories
{
    public interface IRepository<TEntity> where TEntity : class
    {
        // Métodos estándar que todas las tablas deben tener.
        // Se programan de manera genérica para no duplicar código por cada una.

        // CREATE
        // Agrega un registro al repositorio (SQL Server) a la tabla TEntity
        void Add(TEntity entity);
        // Agrega un grupo de registros al repositorio (SQL Server) a la tabla TEntity.
        void AddRange(IEnumerable<TEntity> entities);

        // READ
        // Obtiene el registro con Primary Key = Id de la tabla TEntity.
        TEntity Get(int? Id);
        // Obtiene todos los registros de la tabla TEntity.
        IEnumerable<TEntity> GetAll();
        // Obtiene todos los registros de la tabla TEntity que cumplan con la condición predicate.
        // predicate es una expresión lambda que tiene como parámetro de entrada a TEntity y devolverá
        // una expresión booleana. Si esa expresión es True para un registro, entonces dicho registro se agrega
        // a la lista de registros a devolver a la aplicación.
        IEnumerable<TEntity> Find(Expression<Func<TEntity, bool>> predicate);

        // UPDATE
        // Actualiza un registro al repositorio (SQL Server) a la tabla TEntity.
        // void Update(TEntity entity);
        // Actualiza un grupo de registros al repositorio (SQL Server) a la tabla TEntity.
        // void UpdateRange(IEnumerable<TEntity> entites);

        // DELETE
        // Elimina un registro al repositorio (SQL Server) a la tabla TEntity.
        void Delete(TEntity entity);
        // Elimina un grupo de registros al repositorio (SQL Server) a la tabla TEntity.
        void DeleteRange(IEnumerable<TEntity> entities);
    }
}
