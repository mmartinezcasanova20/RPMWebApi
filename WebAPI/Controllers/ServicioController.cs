using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using System.Collections.Generic;
using WebApi.Data;
using WebAPI.Data;
using WebAPI.Models;

namespace WebAPI.Controllers
{
    [ApiController]
    [Route("api/[controller]")]
    public class ServicioController : ControllerBase
    {
        // GET api/<controller>4
        [HttpGet]
        public List<Servicio> Get()
        {
            return ServicioData.Listar();
        }

        [HttpGet("{id:int}")]
        public Servicio Get(int id)
        {
            return ServicioData.Obtener(id);
        }

        [HttpGet("by-cedula")]
        public List<Servicio> GetByCedula(int cedula)
        {
            return ServicioData.ObtenerPorCedula(cedula);
        }


        [HttpPost]
        [Route("filtrar")]
        public async Task<IActionResult> GetServicios([FromBody] ServicioFiltroDto filtros)
        {
            
            var (query, count) = await ServicioData.ObtenerServiciosFiltradosAsync(filtros);

            var totalItems = count;
            var totalPages = (int)Math.Ceiling(totalItems / (double)filtros.Limit);
            var items = query.ToList();

            return Ok(new
            {
                items,
                totalPages
            });
        }

        // POST api/<controller>
        [HttpPost]
        public bool Post([FromBody] Servicio oServicio)
        {
            return ServicioData.Registrar(oServicio);
        }



        // PUT api/<controller>/5
        //[HttpPut]
        //[Route("api/servicio/ActualizarDetalles/{id}")]

        [HttpPut]
        [Route("ActualizarDetalles/{id}")]
        public IActionResult PutActualizarDetalles(int id, [FromBody] Servicio oServicio)
        {
            bool resultado = ServicioData.Modificar(oServicio);

            if (resultado)
            {
                return Ok("Actualización de detalles exitosa");
            }
            else
            {
                return BadRequest("La actualización de detalles ha fallado");
            }
        }

        // PUT api/<controller>/5
        //[HttpPut]
        //[Route("api/servicio/ModificarEstado/{id}")]

        [HttpPut]
        [Route("ModificarEstado/{id}")]
        public IActionResult PutModificarEstado(int id, [FromBody] Servicio oServicio)
        {
            bool resultado = ServicioData.ModificarEstado(oServicio);

            if (resultado)
            {
                return Ok("Actualización de detalles exitosa");
            }
            else
            {
                return BadRequest("La actualización de detalles ha fallado");
            }
        }




        //public IHttpActionResult PutModificarTodoServicio(int id, [FromBody] Servicio oServicio)

        //{

        //    bool resultado = ServicioData.ModificarTodoServicio(id, oServicio);

        //    if (resultado)

        //    {

        //        return Ok("Modificacion exitosa");

        //    }

        //    else

        //    {

        //        return BadRequest("La modificacion ha fallado");

        //    }

        //}



        // DELETE api/<controller>/5
        [HttpDelete("{id:int}")]
        public bool Delete(int id)
        {
            return ServicioData.Eliminar(id);
        }
    }
}
