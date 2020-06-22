using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace WebApplication1.DB.GenericRepository
{
    public class GenericRepository<T> where T : class
    {
        /// <summary>
        /// Function to get entites
        /// </summary>
        /// <returns>DbSet result of entities</returns>
        public DbSet<T> GetEntities()
        {
            CompatibilityEntities context = new CompatibilityEntities();
            return context.Set<T>();
        }

        /// <summary>
        /// Function to create entity instance
        /// </summary>
        /// <returns>New instance of entity</returns>
        public T CreateEntity()
        {
            using (CompatibilityEntities context = new CompatibilityEntities())
            {
                DbSet<T> table = context.Set<T>();
                return table.Create();
            }
        }

        /// <summary>
        /// Function to select entity by primary key
        /// </summary>
        /// <param name="pk">Primary key of entity to fetch</param>
        /// <returns></returns>
        public T SelectByID(object pk)
        {
            using (CompatibilityEntities context = new CompatibilityEntities())
            {
                DbSet<T> table = context.Set<T>();
                return table.Find(pk);
            }
        }

        /// <summary>
        /// Function to insert entity.
        /// </summary>
        /// <param name="entity">entity to be inserted</param>
        public string Insert(T entity)
        {
            try
            {
                using (CompatibilityEntities context = new CompatibilityEntities())
                {
                    DbSet<T> table = context.Set<T>();
                    table.Add(entity);
                    context.SaveChanges();
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        /// <summary>
        /// Function to update entity.
        /// </summary>
        /// <param name="entity">entity to be updated</param>
        public string Update(T entity)
        {
            try
            {
                using (CompatibilityEntities context = new CompatibilityEntities())
                {
                    DbSet<T> table = context.Set<T>();
                    table.Attach(entity);
                    context.Entry(entity).State = EntityState.Modified;
                    context.SaveChanges();
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="pk">Primary key of entity to be deleted</param>
        public string Delete(object pk)
        {
            try
            {
                using (CompatibilityEntities context = new CompatibilityEntities())
                {
                    DbSet<T> table = context.Set<T>();

                    T existing = table.Find(pk);
                    context.Entry(existing).State = EntityState.Deleted;
                    context.SaveChanges();
                    return string.Empty;
                }
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }


        /// <summary>
        /// Function to insert entity.
        /// </summary>
        /// <param name="entity">entity to be inserted</param>
        /// <param name="context">context to maintain transaction</param>
        public void Insert(T entity, CompatibilityEntities context)
        {
            DbSet<T> table = context.Set<T>();
            table.Add(entity);
        }

        /// <summary>
        /// Function to update entity.
        /// </summary>
        /// <param name="entity">entity to be updated</param>
        /// <param name="context">context to maintain transaction</param>
        public void Update(T entity, CompatibilityEntities context)
        {
            DbSet<T> table = context.Set<T>();
            table.Attach(entity);
            context.Entry(entity).State = EntityState.Modified;
        }

        /// <summary>
        /// Function to delete entity whose primary key is passes.
        /// </summary>
        /// <param name="pk">Primary key of entity to be deleted</param>
        /// <param name="context">context to maintain transaction</param>
        public void Delete(object pk, CompatibilityEntities context)
        {
            DbSet<T> table = context.Set<T>();
            T existing = table.Find(pk);
            context.Entry(existing).State = EntityState.Deleted;
        }

        public List<string> LoadVersion(string parm)
        {
            try
            {
                using (CompatibilityEntities context = new CompatibilityEntities())
                {
                    return context.Database.SqlQuery<string>("Select LISSWVersion from LISServerSoftware , CompatibleTabel lis , CompatibleTabel ys where  lis.CompatibleID = ys.CompatibleID and lis.YiledStarID = '" + parm + "' and lis.LISID = LISServerSoftware.LISID").ToList();
                }
            }
            catch (Exception ex)
            {
                return new List<string>() {
                ex.Message
                };
            }
        }

        public List<string> LoadCompLISVersionDesign(string parm)
        {
            try
            {
                using (CompatibilityEntities context = new CompatibilityEntities())
                {
                    return context.Database.SqlQuery<string>("Select LISSWVersion from LISServerSoftware , CompatibleDesign lis , CompatibleDesign ys where  lis.CompatibleID = ys.CompatibleID and lis.YiledStarID = '" + parm + "' and lis.LISID = LISServerSoftware.LISID").ToList();
                }
            }
            catch (Exception ex)
            {
                return new List<string>() {
                ex.Message
                };
            }
        }

        public List<string> LoadCompYSVersion(string parm)
        {
            try
            {
                using (CompatibilityEntities context = new CompatibilityEntities())
                {
                    return context.Database.SqlQuery<string>("Select YieldStarSWVersion from YiledStarSoftware , CompatibleTabel lis , CompatibleTabel ys where  lis.CompatibleID = ys.CompatibleID and lis.LISID = '" + parm + "' and lis.YiledStarID = LISServerSoftware.YiledStarID").ToList();
                }
            }
            catch (Exception ex)
            {
                return new List<string>() {
                ex.Message
                };
            }
        }

        public List<string> LoadCompYSVersionDesign(string parm)
        {
            try
            {
                using (CompatibilityEntities context = new CompatibilityEntities())
                {
                    return context.Database.SqlQuery<string>("Select YieldStarSWVersion from YiledStarSoftware , CompatibleDesign lis , CompatibleDesign ys where  lis.CompatibleID = ys.CompatibleID and lis.LISID = '" + parm + "' and lis.YiledStarID = LISServerSoftware.YiledStarID").ToList();
                }
            }
            catch (Exception ex)
            {
                return new List<string>() {
                ex.Message
                };
            }
        }

    }
}
