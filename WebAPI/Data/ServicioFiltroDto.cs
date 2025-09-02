namespace WebApi.Data
{
    public class ServicioFiltroDto
    {
        public int Page { get; set; }
        public int Limit { get; set; } = 10;
        public string? NumeroOrden { get; set; }
        public string? TipoServicio { get; set; }
        public DateTime? FechaRecibido { get; set; }
        public string? Tecnico { get; set; }
        public string? TipoEquipo { get; set; }
        public int? IdEstado { get; set; }
        public string? Estado { get; set; }
    }
}
