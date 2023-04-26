using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using ENT;

namespace SL
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Producto" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Producto.svc or Producto.svc.cs at the Solution Explorer and start debugging.
    public class Producto : IProducto
    {
        public Result Add(ENT.Producto producto)
        {
            ENT.Result result = BLL.CatalogoProducto.AgregarProducto(producto);
            if (result.Correct)
            {
                return result;
            }
            else
            {
                return null;
            }
        }

        public Result GetAll(ENT.Producto producto)//quita lo que hay entre estos parentesis

        {
            //ENT.Producto producto = new ENT.Producto();
            ENT.Result result = BLL.CatalogoProducto.RecuperarCatalogo();

            if (result.Correct)
            {//y AQui haz tu unboxing
                producto.Productos = result.Objects;
                return result;
            }
            else
            {
                return null;
            }
        }
    }
}
