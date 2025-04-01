using Microsoft.AspNetCore.Mvc;
using WebAPI.Data;
using WebAPI.Models;

[ApiController]
[Route("api/[controller]")]
public class ClienteController : ControllerBase
{
    // GET api/cliente
    [HttpGet]
    public List<Cliente> Get()
    {
        return ClienteData.Listar();
    }

    // GET api/cliente/{id}
    [HttpGet("{id:int}")]
    public Cliente Get(int id)
    {
        return ClienteData.Obtener(id);
    }

    // GET api/cliente/search?nombreCliente=Juan
    [HttpGet("{NombreCliente}")]
    public List<Cliente> Get(string NombreCliente)
    {
        return ClienteData.ListarPorNombre(NombreCliente);
    }

    // POST api/cliente
    [HttpPost]
    public bool Post([FromBody] Cliente oCliente)
    {
        return ClienteData.Registrar(oCliente);
    }

    // PUT api/cliente/{id}
    //[HttpPut("{id:int}")]
    //public bool Put(int id, [FromBody] Cliente oCliente)
    //{
    //    return ClienteData.Modificar(oCliente);
    //}


    [HttpPut]
    [Route("ActualizarDetalles/{id}")]
    public IActionResult PutActualizarDetalles(int id, [FromBody] Cliente oCliente)
    {
        bool resultado = ClienteData.Modificar(oCliente);

        if (resultado)
        {
            return Ok("Actualización de detalles exitosa");
        }
        else
        {
            return BadRequest("La actualización de detalles ha fallado");
        }
    }

    // DELETE api/cliente/{id}
    [HttpDelete("{id:int}")]
    public bool Delete(int id)
    {
        return ClienteData.Eliminar(id);
    }
}


//using Microsoft.AspNetCore.Mvc;
//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Net;
//using System.Net.Http;
//using WebAPI.Data;
//using WebAPI.Models;

//namespace WebAPI.Controllers
//{
//    [ApiController]
//    [Route("api/[controller]")]
//    public class ClienteController : ControllerBase
//    {
//        // GET api/<controller>
//        [HttpGet()]
//        public List<Cliente> Get()
//        {
//            return ClienteData.Listar();
//        }

//        //public List<Cliente> Get(string idCategoria)
//        //{
//        //    return ClienteData.ListarPorCategoria(idCategoria);
//        //}

//        // GET api/<controller>/5
//        [HttpGet("{id:int}")]
//        public Cliente Get(int id)
//        {
//            return ClienteData.Obtener(id);
//        }
//        [HttpGet("{NombreCliente}")]
//        public List<Cliente> Get(string NombreCliente)
//        {
//            return ClienteData.ListarPorNombre(NombreCliente);
//        }

//        // POST api/<controller>
//        public bool Post([FromBody] Cliente oCliente)
//        {
//            return ClienteData.Registrar(oCliente);
//        }

//        // PUT api/<controller>/5
//        public bool Put(int id, [FromBody] Cliente oCliente)
//        {
//            return ClienteData.Modificar(oCliente);
//        }

//        // DELETE api/<controller>/5
//        public bool Delete(int id)
//        {
//            return ClienteData.Eliminar(id);
//        }
//    }
//}