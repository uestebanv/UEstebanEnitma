using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using ENT;
using PLVista.ServiceProducto;


namespace PLVista.Controllers
{
    public class ProductoController : Controller
    {
        // GET: Producto
        [HttpGet]
        public ActionResult GetAll()
        {
            ENT.Producto producto = new ENT.Producto();
            ProductoClient obj = new ProductoClient();
            var result = obj.GetAll(producto);
            if(result != null)
            {
                producto.Productos = result.Objects;
                return View(producto);
            }
            return View();
        }

        public ActionResult Form(ENT.Producto producto)
        {
            if(producto.IdProducto == 0)
            {
                ProductoClient obj = new ProductoClient();
                var result = obj.Add(producto);

                if(result.Correct)
                {
                    ViewBag.Message = "Se inserto el registro";
                }
                else
                {
                    ViewBag.Message = "Ocurrio un error al insertar el registro";
                }
            }
            return View("Form");
        }
    }
}