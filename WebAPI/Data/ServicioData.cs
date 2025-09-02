using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebApi.Data;
using WebAPI.Models;

namespace WebAPI.Data
{
    public class ServicioData
    {

        public static async Task<(List<Servicio>? Servicios, int TotalRegistros)> ObtenerServiciosFiltradosAsync(ServicioFiltroDto filtro)
        {
            var servicios = new List<Servicio>();
            int totalRegistros = 0;
            try {
                using (var connection = new SqlConnection(Conexion.RutaConexion))
                using (var command = new SqlCommand("SP_Obtener_Servicio_Filtros", connection))
                {

                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@TipoEquipo", filtro.TipoEquipo);
                    command.Parameters.AddWithValue("@Tecnico", filtro.Tecnico);
                    command.Parameters.AddWithValue("@FechaRecibido", filtro.FechaRecibido);
                    command.Parameters.AddWithValue("@TipoServicio", filtro.TipoServicio);
                    command.Parameters.AddWithValue("@IdEstado", filtro.Estado);
                    command.Parameters.AddWithValue("@SearchCriteria", filtro.NumeroOrden);
                    command.Parameters.AddWithValue("@NumeroPagina", filtro.Page);
                    command.Parameters.AddWithValue("@TamanoPagina", filtro.Limit);

                    await connection.OpenAsync();
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        // Primer result set: datos paginados
                        while (reader.Read())
                        {
                            servicios.Add(new Servicio()
                            {
                                NumeroOrden = Convert.ToInt32(reader["NumeroOrden"]),
                                CICliente = Convert.ToInt32(reader["CICliente"]),
                                NombreCliente = reader["NombreCliente"].ToString(),
                                Telefono = reader["Telefono"].ToString(),
                                TipoEquipo = reader["TipoEquipo"].ToString(),
                                Modelo = reader["Modelo"].ToString(),
                                TrabajoARealizar = reader["TrabajoARealizar"].ToString(),
                                TipoServicio = Convert.ToInt32(reader["TipoServicio"]),
                                FechaRecibido = reader["FechaRecibido"].ToString(),
                                FechaFinalizado = reader["FechaFinalizado"].ToString(),
                                Tecnico = Convert.ToInt32(reader["Tecnico"]),
                                PrecioReparacion = Convert.ToInt32(reader["PrecioReparacion"]),
                                IdEstado = Convert.ToInt32(reader["IdEstado"]),
                                Nota = reader["Nota"].ToString(),
                                Borrado = Convert.ToInt32(reader["Borrado"]),
                            });
                        }

                        // Segundo result set: total de registros
                        if (await reader.NextResultAsync() && await reader.ReadAsync())
                        {
                            totalRegistros = reader.GetInt32(0);
                        }
                    }
                }

                return (servicios, totalRegistros);
            } catch(Exception ex)
            {
                return (null,0);
            }

           
        }

        public static List<Servicio> Listar()
        {
            List<Servicio> oListaServicio = new List<Servicio>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Listar_Servicio", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaServicio.Add(new Servicio()
                            {
                                NumeroOrden = Convert.ToInt32(dr["NumeroOrden"]),
                                CICliente = Convert.ToInt32(dr["CICliente"]),
                                NombreCliente = dr["NombreCliente"].ToString(),
                                Telefono = dr["Telefono"].ToString(),
                                TipoEquipo = dr["TipoEquipo"].ToString(),
                                Modelo = dr["Modelo"].ToString(),
                                TrabajoARealizar = dr["TrabajoARealizar"].ToString(),
                                TipoServicio = Convert.ToInt32(dr["TipoServicio"]),
                                FechaRecibido = dr["FechaRecibido"].ToString(),
                                FechaFinalizado = dr["FechaFinalizado"].ToString(),
                                Tecnico = Convert.ToInt32(dr["Tecnico"]),
                                PrecioReparacion = Convert.ToInt32(dr["PrecioReparacion"]),
                                IdEstado = Convert.ToInt32(dr["IdEstado"]),
                                Nota = dr["Nota"].ToString(),
                                Borrado = Convert.ToInt32(dr["Borrado"]),
                                //NumeroOrdenVinculada = Convert.ToInt32(dr["NumeroOrdenVinculada"]),
                            });
                        }
                    }
                    return oListaServicio;
                }
                catch (Exception ex)
                {
                    return oListaServicio;
                }
            }
        }

        public static bool Registrar(Servicio oServicio)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Registrar_Servicio", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                //cmd.Parameters.AddWithValue("@NumeroOrden", oServicio.NumeroOrden);
                cmd.Parameters.AddWithValue("@CICliente", oServicio.CICliente);
                cmd.Parameters.AddWithValue("@TipoEquipo", oServicio.TipoEquipo);
                cmd.Parameters.AddWithValue("@Modelo", oServicio.Modelo);
                cmd.Parameters.AddWithValue("@TrabajoARealizar", oServicio.TrabajoARealizar);
                cmd.Parameters.AddWithValue("@TipoServicio", oServicio.TipoServicio);
                cmd.Parameters.AddWithValue("@FechaRecibido", oServicio.FechaRecibido);
                cmd.Parameters.AddWithValue("@FechaFinalizado", oServicio.FechaFinalizado);
                cmd.Parameters.AddWithValue("@Tecnico", oServicio.Tecnico);
                cmd.Parameters.AddWithValue("@PrecioReparacion", oServicio.PrecioReparacion);
                cmd.Parameters.AddWithValue("@IdEstado", oServicio.IdEstado);
                cmd.Parameters.AddWithValue("@Nota", oServicio.Nota);
                cmd.Parameters.AddWithValue("@Borrado", oServicio.Borrado);


                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        public static bool ModificarEstado(Servicio oServicio)
        {


            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Modificar_EstadoServicio", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NumeroOrden", oServicio.NumeroOrden);
                //cmd.Parameters.AddWithValue("@CICliente", oServicio.CICliente);
                //cmd.Parameters.AddWithValue("@TipoEquipo", oServicio.TipoEquipo);
                //cmd.Parameters.AddWithValue("@Modelo", oServicio.Modelo);
                //cmd.Parameters.AddWithValue("@TrabajoARealizar", oServicio.TrabajoARealizar);
                //cmd.Parameters.AddWithValue("@TipoServicio", oServicio.TipoServicio);
                //cmd.Parameters.AddWithValue("@FechaRecibido", oServicio.FechaRecibido);
                cmd.Parameters.AddWithValue("@FechaFinalizado", oServicio.FechaFinalizado);
                //cmd.Parameters.AddWithValue("@Tecnico", oServicio.Tecnico);
                //cmd.Parameters.AddWithValue("@PrecioReparacion", oServicio.PrecioReparacion);
                cmd.Parameters.AddWithValue("@IdEstado", oServicio.IdEstado);
                //cmd.Parameters.AddWithValue("@Nota", oServicio.Nota);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }


        public static bool Modificar(Servicio oServicio)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Modificar_Servicio", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NumeroOrden", oServicio.NumeroOrden);
                cmd.Parameters.AddWithValue("@CICliente", oServicio.CICliente);
                cmd.Parameters.AddWithValue("@TipoEquipo", oServicio.TipoEquipo);
                cmd.Parameters.AddWithValue("@Modelo", oServicio.Modelo);
                cmd.Parameters.AddWithValue("@TrabajoARealizar", oServicio.TrabajoARealizar);
                cmd.Parameters.AddWithValue("@TipoServicio", oServicio.TipoServicio);
                cmd.Parameters.AddWithValue("@FechaRecibido", oServicio.FechaRecibido);
                cmd.Parameters.AddWithValue("@FechaFinalizado", oServicio.FechaFinalizado);
                cmd.Parameters.AddWithValue("@Tecnico", oServicio.Tecnico);
                cmd.Parameters.AddWithValue("@PrecioReparacion", oServicio.PrecioReparacion);
                cmd.Parameters.AddWithValue("@IdEstado", oServicio.IdEstado);
                cmd.Parameters.AddWithValue("@Nota", oServicio.Nota);
                cmd.Parameters.AddWithValue("@Borrado", oServicio.Borrado);
                //cmd.Parameters.AddWithValue("@NumeroOrdenVinculada", oServicio.NumeroOrdenVinculada);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;
                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

        public static Servicio Obtener(int NumeroOrden)
        {
            Servicio oServicio = new Servicio();
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Obtener_Servicio_Id", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NumeroOrden", NumeroOrden);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oServicio = new Servicio()
                            {
                                NumeroOrden = Convert.ToInt32(dr["NumeroOrden"]),
                                CICliente = Convert.ToInt32(dr["CICliente"]),
                                TipoEquipo = dr["TipoEquipo"].ToString(),
                                Modelo = dr["Modelo"].ToString(),
                                TrabajoARealizar = dr["TrabajoARealizar"].ToString(),
                                TipoServicio = Convert.ToInt32(dr["TipoServicio"]),
                                FechaRecibido = dr["FechaRecibido"].ToString(),
                                FechaFinalizado = dr["FechaFinalizado"].ToString(),
                                Tecnico = Convert.ToInt32(dr["Tecnico"]),
                                NombreTecnico = dr["NombreTecnico"].ToString(),
                                PrecioReparacion = Convert.ToInt32(dr["PrecioReparacion"]),
                                IdEstado = Convert.ToInt32(dr["IdEstado"]),
                                Nota = dr["Nota"].ToString(),
                                Borrado = Convert.ToInt32(dr["Borrado"]),
                            };
                        }
                    }
                    return oServicio;
                }
                catch (Exception ex)
                {
                    return oServicio;
                }
            }
        }

        public static List<Servicio> ObtenerPorCedula(int Cedula)
        {
            List<Servicio> oListaServicio = new List<Servicio>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Obtener_Servicio_CI", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CI", Cedula);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaServicio.Add(new Servicio()
                            {
                                NumeroOrden = Convert.ToInt32(dr["NumeroOrden"]),
                                CICliente = Convert.ToInt32(dr["CICliente"]),
                                TipoEquipo = dr["TipoEquipo"].ToString(),
                                Modelo = dr["Modelo"].ToString(),
                                TrabajoARealizar = dr["TrabajoARealizar"].ToString(),
                                TipoServicio = Convert.ToInt32(dr["TipoServicio"]),
                                FechaRecibido = dr["FechaRecibido"].ToString(),
                                FechaFinalizado = dr["FechaFinalizado"].ToString(),
                                Tecnico = Convert.ToInt32(dr["Tecnico"]),
                                NombreTecnico = dr["NombreTecnico"].ToString(),
                                PrecioReparacion = Convert.ToInt32(dr["PrecioReparacion"]),
                                IdEstado = Convert.ToInt32(dr["IdEstado"]),
                                Nota = dr["Nota"].ToString(),
                                Borrado = Convert.ToInt32(dr["Borrado"]),
                            });
                        }
                    }
                    return oListaServicio;
                }
                catch (Exception ex)
                {
                    return oListaServicio;
                }
            }
        }

        public static bool Eliminar(int id)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Eliminiar_Servicio", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@NumeroOrden", id);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();
                    return true;

                }
                catch (Exception ex)
                {
                    return false;
                }
            }
        }

    }
}
