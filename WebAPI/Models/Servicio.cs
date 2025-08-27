namespace WebAPI.Models
{
    public class Servicio
    {
        public int NumeroOrden { get; set; }
        public int CICliente { get; set; }
        public string? NombreCliente { get; set; }
        public string? Telefono { get; set; }
        public string Modelo { get; set; }
        public string TipoEquipo { get; set; }
        public int TipoServicio { get; set; }
        public string TrabajoARealizar { get; set; }
        public int Tecnico { get; set; }
        public string? NombreTecnico { get; set; }
        public int PrecioReparacion { get; set; }
        public string FechaRecibido { get; set; }
        public string FechaFinalizado { get; set; }
        public string Nota { get; set; }
        public  int IdEstado { get; set; }
        public int Borrado { get; set; }
        public int NumeroOrdenVinculada { get; set; }

    }
}