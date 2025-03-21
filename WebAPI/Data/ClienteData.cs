using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using WebAPI.Models;

namespace WebAPI.Data
{
    public class ClienteData
    {
        public static List<Cliente> Listar()
        {
            List<Cliente> oListaUsuario = new List<Cliente>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Listar_Cliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaUsuario.Add(new Cliente()
                            {
                                CI = Convert.ToInt32(dr["CI"]),
                                Nombre = dr["Nombre"].ToString(),
                                Apellido = dr["Apellido"].ToString(),
                                Telefono = dr["Telefono"].ToString(),
                                Mail = dr["Mail"].ToString(), 
                            });
                        }
                    }
                    return oListaUsuario;
                }
                catch (Exception ex)
                {
                    return oListaUsuario;
                }
            }
        }

        public static bool Registrar(Cliente oCliente)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Registrar_Cliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CI", oCliente.CI);
                cmd.Parameters.AddWithValue("@RUT", oCliente.RUT);
                cmd.Parameters.AddWithValue("@RazonSocial", oCliente.RazonSocial);
                cmd.Parameters.AddWithValue("@Nombre", oCliente.Nombre);
                cmd.Parameters.AddWithValue("@Apellido", oCliente.Apellido);
                cmd.Parameters.AddWithValue("@Telefono", oCliente.Telefono);
                cmd.Parameters.AddWithValue("@Mail", oCliente.Mail);
                

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

        public static bool Modificar(Cliente oCliente)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Modificar_Cliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CI", oCliente.CI);
                cmd.Parameters.AddWithValue("@Nombre", oCliente.Nombre);
                cmd.Parameters.AddWithValue("@Apellido", oCliente.Apellido);
                cmd.Parameters.AddWithValue("@Telefono", oCliente.Telefono);
                cmd.Parameters.AddWithValue("@Mail", oCliente.Mail);

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

        public static Cliente Obtener(int idCliente)
        {
            Cliente oCliente = new Cliente();
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Obtener_Cliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CI", idCliente);

                try
                {
                    oConexion.Open();
                    cmd.ExecuteNonQuery();

                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oCliente = new Cliente()
                            {
                                CI = Convert.ToInt32(dr["CI"]),
                                Nombre = dr["Nombre"].ToString(),
                                Apellido = dr["Apellido"].ToString(),
                                Telefono = dr["Telefono"].ToString(),
                                Mail = dr["Mail"].ToString()
                            };
                        }
                    }
                    return oCliente;
                }
                catch (Exception ex)
                {
                    return oCliente;
                }
            }
        }

        public static bool Eliminar(int id)
        {
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Eliminiar_Cliente", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@CI", id);

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

        public static List<Cliente> ListarPorNombre(string NombreCliente)
        {
            List<Cliente> oListaUsuario = new List<Cliente>();
            using (SqlConnection oConexion = new SqlConnection(Conexion.RutaConexion))
            {
                SqlCommand cmd = new SqlCommand("SP_Listar_Cliente_Por_Nombre", oConexion);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Nombre", NombreCliente);

                try
                {
                    oConexion.Open();
                    //cmd.ExecuteNonQuery();
                    using (SqlDataReader dr = cmd.ExecuteReader())
                    {
                        while (dr.Read())
                        {
                            oListaUsuario.Add(new Cliente()
                            {
                                CI = Convert.ToInt32(dr["CI"]),
                                Nombre = dr["Nombre"].ToString(),
                                Apellido = dr["Apellido"].ToString(),
                                Telefono = dr["Telefono"].ToString(),
                                Mail = dr["Mail"].ToString()
                            });
                        }
                    }
                    return oListaUsuario;
                }
                catch (Exception ex)
                {
                    return oListaUsuario;
                }
            }
        }
    }
}