using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class CatalogoProducto
    {
        public static ENT.Result AgregarProducto(ENT.Producto producto)
        {
            ENT.Result result = new ENT.Result();
            try
            {
                using(DAL.UEstebanEnitmaEntities context = new DAL.UEstebanEnitmaEntities())
                {
                    var query = context.sp_InsCatalogoProd(producto.Descripcion);

                    if(query >= 1)
                    {
                        result.Correct = true;
                    }
                    else
                    {
                        result.Correct = false;
                    }
                }
            }
            catch(Exception ex)
            {
                result.Correct = false;
                result.ErrorMessage = ex.Message;
            }
            return result;
        }

        public static ENT.Result RecuperarCatalogo()
        {
            ENT.Result result = new ENT.Result();

            try
            {
                using(DAL.UEstebanEnitmaEntities context = new DAL.UEstebanEnitmaEntities())
                {
                    var query = context.sp_GetAllCatalogoProd().ToList();

                    if(query != null)
                    {
                        result.Objects = new List<object>();

                        foreach(var Item in query)
                        {
                            ENT.Producto producto = new ENT.Producto();

                            producto.IdProducto = Item.IdProducto;
                            producto.Descripcion = Item.Descripcion;
                            producto.IdUsuario = Item.IdUsuario.Value;
                            producto.FechaCreacion = Item.FechaCreacion.Value;

                            result.Objects.Add(producto);
                        }
                        result.Correct = true;
                    }
                    else
                    {
                        result.Correct = false;
                    }
                }
            }
            catch(Exception ex)
            {
                result.Correct = false;
                result.ErrorMessage = ex.Message;
            }
            return result;
        }
    }
}
