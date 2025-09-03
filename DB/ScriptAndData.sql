USE [rpmtecno]
GO
/****** Object:  Table [dbo].[CLIENTE]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLIENTE](
	[CI] [int] NOT NULL,
	[RUT] [varchar](12) NULL,
	[RazonSocial] [varchar](150) NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Telefono] [varchar](20) NOT NULL,
	[Mail] [varchar](100) NOT NULL,
 CONSTRAINT [CLIENTE_PK] PRIMARY KEY CLUSTERED 
(
	[CI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EMPLEADO]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EMPLEADO](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[NombreEmpleado] [varchar](100) NULL,
 CONSTRAINT [EMPLEADO_PK] PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ESTADOSERVICIO]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ESTADOSERVICIO](
	[IdEstado] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](100) NULL,
 CONSTRAINT [ESTADOSERVICIO_PK] PRIMARY KEY CLUSTERED 
(
	[IdEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GARANTIA]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GARANTIA](
	[IdGarantia] [int] IDENTITY(1,1) NOT NULL,
	[NumeroOrden] [int] NOT NULL,
	[FechaInicio] [varchar](10) NOT NULL,
	[FechaFinal] [varchar](10) NOT NULL,
 CONSTRAINT [GARANTIA_PK] PRIMARY KEY CLUSTERED 
(
	[IdGarantia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SERVICIO]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SERVICIO](
	[NumeroOrden] [int] IDENTITY(1,1) NOT NULL,
	[CICliente] [int] NOT NULL,
	[TipoEquipo] [varchar](200) NOT NULL,
	[Modelo] [varchar](200) NULL,
	[TrabajoARealizar] [varchar](200) NOT NULL,
	[TipoServicio] [varchar](100) NOT NULL,
	[FechaRecibido] [varchar](10) NOT NULL,
	[FechaFinalizado] [varchar](10) NOT NULL,
	[Tecnico] [int] NULL,
	[PrecioReparacion] [int] NOT NULL,
	[IdEstado] [int] NOT NULL,
	[Nota] [varchar](200) NULL,
	[Borrado] [bit] NULL,
 CONSTRAINT [SERVICIO_PK1] PRIMARY KEY CLUSTERED 
(
	[NumeroOrden] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TIPOSERVICIO]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TIPOSERVICIO](
	[IdTipoServicio] [int] IDENTITY(1,1) NOT NULL,
	[NombreServicio] [varchar](100) NULL,
 CONSTRAINT [ServicioTipo_PK] PRIMARY KEY CLUSTERED 
(
	[IdTipoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[CI] [int] NOT NULL,
	[Pass] [varchar](20) NOT NULL,
	[Rol] [varchar](15) NOT NULL,
 CONSTRAINT [USUARIO_PK] PRIMARY KEY CLUSTERED 
(
	[CI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (456, N'Carlos', N'Soria', N'59897255346', N'carlos.soria.olivera@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (25116105, N'Teresa', N'Ciancio', N'59898783979', N'0')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (30059221, N'GABRIEL', N'AGUIAR', N'098784134', N'gabrieladrianaguiar@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (30654411, N'Richard', N'Rodriguez', N'59899185092', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (30980379, N'Mirna ', N'Pereyra', N'59899137892', N'mirpebea@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (31634400, N'Daniel ', N'Gonet', N'59899533606', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (31639648, N'Maria Noel', N'Marichal', N'096180687', N'mnmarichal1971@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (32115622, N'Mara', N'Suárez', N'59898212301', N'mara.suarez@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (32115681, N'Ana', N'López', N'59899211051', N'ana.lopez@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (32725216, N'Marcelo', N'Villalba ', N'59891607014', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (32955407, N'Hugo', N'Robaina', N'59897580628', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (33004514, N'SEGUNDO', N'SORIA', N'099983853', N'empresa-santa-rosa@hotmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (33611874, N'Andrea', N'Scaron', N'59899252325', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (34587787, N'Edgardo', N'Sire', N'59899675144', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (35052331, N'Pedro', N'Da Rosa', N'59894595781', N'pedro.darosa@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (35579084, N'Alberto', N'Ramos', N'59898839022', N'0')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (35977783, N'Jorge ', N'Sandes', N'59898521361', N'0')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (37151541, N'CLAUDIA', N'CAMEJO', N'096918171', N'0000')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (37455656, N'Jorge', N'Gimenez', N'099909733', N'00000')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (38955516, N'Horacio', N'Lerete', N'59899154275', N'cabezaleretegmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (39581227, N'ANABELA', N'PEÑA', N'095969708', N'anabelapeña@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (40665466, N'Andres', N'Perdomo', N'59898950800', N'andrespc1981@hotmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (41208021, N'Mari', N'Posente', N'59898325960', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (41432581, N'Arturo', N'Nuñez', N'59899245676', N'0')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42095818, N'Diego', N'Rodríguez', N'59899114522', N'diego.rodriguez@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42223332, N'Nara', N'Ramos', N'59899599563', N'nara.ramos@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42409008, N'Marianela ', N'Ravera', N'59898247898', N'mravera@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42494500, N'Alejandra', N'Garayalde', N'59891310319', N'miabala23@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42585478, N'Darío ', N'Presa', N'59899560476', N'dariopresa123@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42607866, N'Leandro', N'Peregalli', N'59899557581', N'emmaperegalli@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42658891, N'Jorge', N'Perez', N'59898236954', N'jorge.perez@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42729668, N'Elsa', N'Curbelo', N'59891736780', N'elsaraquelcorrea5@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (42921168, N'Juan', N'Martínez', N'59891511602', N'juan.martinez@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (43424635, N'Nicolas', N'Umpierrez', N'59899757155', N'nicolasumpierrez2013@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (43439832, N'Silvana', N'Sierra', N'59891531648', N'silvanasierra03@gmail,com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (43581570, N'Walkiria', N'Martinez', N'59895958282', N'loremarca2015@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (43595206, N'SILVANA ', N'RODRIGUEZ', N'59893442605', N'123456@GMAIL.COM')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (44260149, N'Enrique ', N'García', N'59898375315', N'jga2412@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (44352657, N'Mirian', N'Bon', N'59895257943', N'miriame23215@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (44525557, N'LEONARDO FABIAN', N'CAMARA MONTERO', N'59898833017', N'123456@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (45270080, N'Diego', N'Aguirre', N'098121212', N'daguirre@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (45285179, N'Sandra', N'Soba', N'59892146270', N'0')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (45438642, N'Marines', N'Bentancor', N'59899394763', N'maribentancor2017@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (45552527, N'ESTELA', N'GARRIDO', N'099538159', N'ESTELA@GMAIL.COM')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (45777408, N'Sandra', N'Rodriguez', N'59898245710', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (45988227, N'Nino', N'Martínez', N'59899339194', N'nino123@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (46463733, N'CATY', N'RAMOS', N'59891400574', N'aguslauta@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (46913528, N'Marcos', N'Fernandez', N'59898183851', N'marcosferg@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (47124075, N'Ana', N'Montero', N'59895162883', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (47329944, N'CLAUDIO', N'AZEREDO', N'43152054', N'CLAUDIORAZEREDO@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (47619896, N'Pablo', N'Silva', N'59893656471', N'pablo.silva@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (48833477, N'SOLEDAD ', N'VIERA', N'59895242010', N'albafiestas@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (48856049, N'ANTHONY ', N'PERAZZA', N'59895603498', N'anthonyperazza2022@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (48919132, N'Gonzalo', N'Rosa', N'59895794872', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (48943999, N'Dayana', N'Acuña', N'598166041', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (49098088, N'Eliana', N'Michelena', N'59891005288', N'0')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (49606289, N'Rodrigo', N'Rocha', N'59898193856', N'0')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (49672911, N'PABLO ', N'TABAREZ', N'091588311', N'123456@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (49875485, N'Brahian', N'Montero', N'59897255346', N'carlos@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (50002118, N'Laura', N'Gómez', N'59897211535', N'laura.gomez@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (50274998, N'EMILIA', N'DIVERIO', N'59898235579', N'mariaemiliadiverio@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (50483123, N'Lorena', N'Robaina', N'59898142897', N'robainalorena@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (50610992, N'Guzman', N'Martirena', N'59898433978', N'martirenaguzman@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (50700032, N'Maripaz', N'Gonzalez', N'095322883', N'maripazgonzalez.11@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (50767765, N'Gaston', N'Berni', N'59891263968', N'gastonberni375@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (51210280, N'Nahuel', N'Delgado', N'59899535601', N'nanoricardo19@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (51788904, N'Fabio', N'Duarte', N'59896475919', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (52041848, N'Robert ', N'Martin', N'099682601', N'djrobertmartin114@hotmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (52147220, N'Ana', N'Cabrera', N'59892144370', N'cabreraanalaura90@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (52289460, N'Maite', N'Romero', N'59899607740', N'maiterromeroizquierdo14@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (52992259, N'FACUNDO', N'VAZQUEZ', N'59896368066', N'fv51453@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (53296898, N'JESICA', N'MOROSOLI', N'59898942859', N'jesicamotosoli@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (53743227, N'Bruno', N'Morales', N'59892825139', N'0')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (54360848, N'Manuel', N'Peregalli', N'59898783507', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (54391465, N'PAULA', N'CALABUIG', N'59894708898', N'rpmtecno@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (55055925, N'ALEJANDRO', N'SAULE', N'59896382936', N'123456@GMAIL.COM')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (55289946, N'Micaela', N'Martinez', N'59899183549', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (55635197, N'Facundo ', N'Peña', N'092563260', N'facuu2108@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (56261403, N'Jeniffer', N'Flores', N'59891828614', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (56343799, N'JUAN MANUEL', N'MARTINEZ', N'59892828150', N'martinezpianojuanmanuel@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (56458982, N'DILAN ', N'SILVERA', N'59899042026', N'dilansilvera365.6@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (56469785, N'David', N'Gonzales', N'59899275901', N'dg351130@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (56765901, N'Rodrigo', N'Rodriguez', N'099762847', N'rodriguezmellorodrigo@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (57154577, N'Abel', N'Rojas', N'098789211', N'uuu523@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (57856842, N'VALENTINO', N'GARCIA', N'59899055063', N'valeentinogarcia@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (57877381, N'ISMAEL', N'GONZALES', N'59892197862', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (57950630, N'Rocío', N'Mariño', N'59892520031', N'romar01611@gmail.com')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (58086692, N'Benjamin', N'Del Puerto', N'59899330519', N'00')
INSERT [dbo].[CLIENTE] ([CI], [Nombre], [Apellido], [Telefono], [Mail]) VALUES (62603957, N'Juan', N'Martini', N'099505637', N'juanpamartini84@gmail.com')
GO
SET IDENTITY_INSERT [dbo].[EMPLEADO] ON 

INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreEmpleado]) VALUES (1, N'Reparador PC')
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreEmpleado]) VALUES (2, N'Reparador Celular')
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreEmpleado]) VALUES (3, N'Reparador Impresora')
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreEmpleado]) VALUES (11, N'Reparador Estufas')
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreEmpleado]) VALUES (12, N'Juan Martini')
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreEmpleado]) VALUES (13, N'Darío Presa')
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreEmpleado]) VALUES (14, N'Luis de León')
INSERT [dbo].[EMPLEADO] ([IdEmpleado], [NombreEmpleado]) VALUES (15, N'Service Oficial')
SET IDENTITY_INSERT [dbo].[EMPLEADO] OFF
GO
SET IDENTITY_INSERT [dbo].[ESTADOSERVICIO] ON 

INSERT [dbo].[ESTADOSERVICIO] ([IdEstado], [Estado]) VALUES (1, N'Ingresado')
INSERT [dbo].[ESTADOSERVICIO] ([IdEstado], [Estado]) VALUES (2, N'En Proceso de Reparación')
INSERT [dbo].[ESTADOSERVICIO] ([IdEstado], [Estado]) VALUES (3, N'Esperando Repuesto')
INSERT [dbo].[ESTADOSERVICIO] ([IdEstado], [Estado]) VALUES (4, N'Reparación Finalizada')
INSERT [dbo].[ESTADOSERVICIO] ([IdEstado], [Estado]) VALUES (5, N'Reparación Cancelada')
SET IDENTITY_INSERT [dbo].[ESTADOSERVICIO] OFF
GO
SET IDENTITY_INSERT [dbo].[GARANTIA] ON 

INSERT [dbo].[GARANTIA] ([IdGarantia], [NumeroOrden], [FechaInicio], [FechaFinal]) VALUES (5, 30, N'12/10/2024', N'12/11/2024')
INSERT [dbo].[GARANTIA] ([IdGarantia], [NumeroOrden], [FechaInicio], [FechaFinal]) VALUES (6, 34, N'14/10/2024', N'14/11/2024')
SET IDENTITY_INSERT [dbo].[GARANTIA] OFF
GO
SET IDENTITY_INSERT [dbo].[SERVICIO] ON 

INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (9, 42658891, N'PC', N'lenovo', N'Reparación teclado', N'1', N'2024-02-12', N'16/02/2024', 1, 1200, 4, N'', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (10, 47619896, N'Impreso', N'Epsilon', N'Cartuchos rotos', N'4', N'2024-02-12', N'', 3, 800, 1, N'', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (11, 32115681, N'Celular', N'Samsung', N'Cambio Pantalla ', N'2', N'2024-02-12', N' ', 2, 900, 5, N'PIN 5846', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (12, 42095818, N'Impresora', N'Cannon', N'No imprime a color', N'4', N'2024-02-12', N'', 3, 900, 1, N'', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (13, 42921168, N'Celular', N'iphone', N'Cambiar botón de inicio', N'2', N'2024-02-12', N'12/02/2024', 2, 1500, 4, N'PIN 5123', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (14, 42223332, N'Celular', N'Samsung', N'Reparar el táctil', N'2', N'2024-02-12', N'12/02/2024', 2, 950, 4, N'', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (15, 42223332, N'Computadora', N'HP 1000', N'Se le rompio la pantalla', N'1', N'2024-02-16', N' ', 1, 500, 5, N'', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (16, 42921168, N'PC', N'lenovo', N'Cambio de teclado', N'1', N'2024-02-16', N'', 1, 1800, 1, N'', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (17, 47619896, N'PC', N'lenovo', N'Cambio de teclado', N'1', N'2024-02-16', N'06/03/2024', 1, 2197, 4, N'', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (18, 42223332, N'test', N'test', N'test', N'2', N'2024-03-05', N'10/10/2024', 2, 22, 4, N'test', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (19, 456, N'Laptop PC', N'HP', N'no le anda el teclado', N'1', N'2024-03-06', N'', 1, 2500, 1, N'1899', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (20, 456, N'Ifon', N'Nose', N'Algo y si no tiene lo rompemos para cobrarle mas', N'7', N'2024-03-07', N'', 11, 15000, 1, N'Facturar en dolares', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (21, 35052331, N'prueba 1903', N'pc', N'hola1', N'1', N'2024-03-19', N'10/10/2024', 1, 200, 4, N'1234', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (22, 46913528, N'Celular', N'Epson l300', N'Atasco de hoja', N'2', N'2024-10-10', N'10/10/2024', 3, 0, 4, N'Con adaptador', 1)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (23, 42585478, N'Celular', N'Iphone 13 p Max', N'cambio de bateria', N'2', N'2024-10-10', N'10/10/2024', 13, 3800, 4, N'Sin estuche', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (24, 62603957, N'Notebook', N'Acer Negra ', N'Revisar entrada de carga', N'1', N'2024-10-10', N'10/10/2024', 12, 0, 4, N'Con cargador y ficha', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (25, 30059221, N'Celular', N'REDMI 9S', N'CÁMARA DA ERROR', N'2', N'2024-10-11', N'11/10/2024', 13, 1200, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (26, 43439832, N'Notebook', N'HP Negra', N'Activar Wind, no iniciaba
CON INFO IMPORTANTE', N'1', N'2024-10-11', N'11/10/2024', 12, 0, 4, N'CON INFO IMPORTANTE', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (27, 40665466, N'Celular', N'A02', N'Cambio de pantalla', N'2', N'2024-10-11', N'11/10/2024', 13, 2300, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (28, 57950630, N'Celular', N'a207m', N'PANTALLA + ENTRADA', N'2', N'2024-10-11', N'17/10/2024', 13, 3000, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (29, 48856049, N'IPHONE 7 PLUS', N'7 PLUS', N'BATERIA', N'2', N'2024-10-12', N'12/10/2024', 13, 1500, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (30, 45988227, N'Celular', N'Y9 2019', N'PANTALL', N'2', N'2024-10-12', N'12/10/2024', 13, 2300, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (31, 52289460, N'Notebook', N'HP Rosa', N'Falla intermitente en pantalla al presionar parte inferior izquierda o al mover la pantalla, PRESUPUESTAR', N'1', N'2024-10-12', N'', 12, 0, 1, N'Con cargador', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (32, 31639648, N'Impresora', N'2165w', N'PROBLEMA CON WIFI', N'4', N'2024-10-12', N'', 12, -2, 1, N'MANDARL WHATSAPP', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (33, 34587787, N'Celular', N'Redmi 6A', N'Cambio de entrada de carga', N'2', N'2024-10-14', N'15/10/2024', 13, 800, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (34, 31634400, N'Celular', N'Samsung A325', N'cambio de display', N'2', N'2024-10-14', N'14/10/2024', 13, 3199, 4, N'Sin estuche', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (35, 42607866, N'Celular', N'Motorola G30', N'cambio display', N'2', N'2024-10-14', N'17/10/2024', 13, 2000, 4, N'Con estuche transparente', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (36, 48833477, N'Impresora', N'L3150', N'NO AGARRA LA HOJA', N'4', N'2024-10-14', N' ', 12, -1, 5, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (37, 56458982, N'Celular', N'IPHONE 13 MINI', N'PANTALLA', N'2', N'2024-10-14', N'15/10/2024', 13, 6500, 4, N'TAPA TRASERA PREUPUESTAR', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (38, 50610992, N'Impresora', N'CANON PRIXMA G2110', N'MARCA ERROR (CARTUCHOS)', N'4', N'2024-10-14', N'16/10/2024', 12, 0, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (39, 47329944, N'TORRE', N'TORRE PC', N'DISCO 1TB', N'1', N'2024-10-14', N' ', 12, 4000, 2, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (40, 52992259, N'Celular', N'8 plus', N'probar bateria y entrada de carga', N'2', N'2024-10-14', N'15/10/2024', 13, 0, 4, N'si es bateria entre 1500 y 1700', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (41, 42729668, N'Celular', N'Redmi 9T', N'Se apagó mientras hablaba. No carga, ni enciende ', N'2', N'2024-10-14', N' ', 13, 0, 2, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (42, 46463733, N'Celular', N'a307', N'pantalla', N'2', N'2024-10-14', N'16/10/2024', 13, 4000, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (43, 42494500, N'Celular', N'A23', N'Cambio de Display', N'2', N'2024-10-15', N'15/10/2024', 13, 2500, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (44, 47124075, N'Celular', N'10C', N'Cambio de Dislpay', N'2', N'2024-10-15', N'15/10/2024', 13, 2300, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (45, 54360848, N'PS4', N'PS4', N'Mantenimiento, cambio de pasta térmica y revisión de mandos', N'1', N'2024-10-15', N'15/10/2024', 12, 1500, 4, N'Con 2 mandos originales (rojo y negro)', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (46, 33611874, N'PS Torre', N'Torre Gamer', N'Colocar disco SSD', N'1', N'2024-10-15', N'15/10/2024', 12, 600, 4, N'PAGO', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (47, 51210280, N'PC Torre (Negra)', N'Gamer ', N'Enciende pero no da imagen', N'1', N'2024-10-16', N'', 12, 0, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (48, 50700032, N'Celular', N'Samsung A03 Core', N'Cambio de pantalla', N'2', N'2024-10-16', N'16/10/2024', 13, 2300, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (49, 53296898, N'Impresora', N'L3110 EPSON', N'RESET', N'4', N'2024-10-17', N'', 12, 600, 1, N'RESET', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (50, 30654411, N'Celular', N'IPHONE XR', N'CAMBIO DE DISPLAY', N'1', N'2024-10-17', N'17/10/2024', 13, 3000, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (51, 44260149, N'Celular', N'ZTE A51', N'Cambio de Display', N'2', N'2024-10-18', N'21/10/2024', 13, 2300, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (52, 45777408, N'Iphone 11 Pro', N'Iphone 11 Pro', N'Cambio Displayt', N'2', N'2024-10-18', N'18/10/2024', 13, 3000, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (53, 55289946, N'Celular', N'Iphone 11', N'Cambio de Bateria', N'2', N'2024-10-18', N'18/10/2024', 13, 2196, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (54, 48919132, N'Poco M5', N'Poco M5', N'Cambio de Display', N'2', N'2024-10-18', N'21/10/2024', 13, 2699, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (55, 55635197, N'iphone 11 pro', N'iphone 11 pro', N'software', N'2', N'2024-10-18', N' ', 13, 698, 5, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (56, 54391465, N'CELULAR IPHONE XR', N'XR', N'PANTALLA', N'2', N'2024-10-19', N'19/10/2024', 13, 2800, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (57, 32955407, N'Torre PC + inalambrico', N'Torre PC + Modem inalambrico', N'Revisar conección a internet, se desconecta ', N'1', N'2024-10-19', N'', 12, 0, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (58, 42409008, N'Redmi Note 8', N'Redmi Note 8', N'Mojado, se reinicia.', N'1', N'2024-10-21', N' ', 13, 0, 2, N'4630', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (59, 56261403, N'A20S', N'A20S', N'Cambio Display', N'2', N'2024-10-21', N'29/10/2024', 13, 2600, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (60, 52147220, N'Notebook HP Dorada', N'Notebook HP Dorada', N'Se trancan la "P" y el mouse se mueve solo', N'1', N'2024-10-21', N'24/10/2024', 12, 0, 4, N'Sin cargador', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (61, 31634400, N'A325 Samsung', N'A325 Samsung', N'Cambio Display', N'2', N'2024-10-22', N'29/10/2024', 13, 2200, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (62, 48943999, N'IPHONE 7 PLUS', N'IPHONE 7 PLUS', N'Cambio Display', N'2', N'2024-10-23', N'29/10/2024', 13, 2500, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (63, 57877381, N'A33 5G', N'A33 5G', N'CAMBIO DISPLAY PAGO', N'2', N'2024-10-23', N'24/10/2024', 13, 0, 4, N'PAGO', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (64, 56765901, N'Samsung a042', N'Samsung a042', N'cambio de pantalla', N'2', N'2024-10-23', N'29/10/2024', 13, 2300, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (65, 58086692, N'Redmi Note10', N'Redmi Note10', N'Cambio Display', N'2', N'2024-10-23', N'24/10/2024', 13, 2997, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (66, 57856842, N'motorola g54', N'MOTOROLA', N'CAMBIO DE PANTALLA', N'2', N'2024-10-23', N'24/10/2024', 13, 2898, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (67, 41208021, N'Redmi 9A', N'Redmi 9A', N'Formato', N'2', N'2024-10-24', N'25/10/2024', 13, 400, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (68, 38955516, N'Notebook HP Negra', N'Notebook HP Negra', N'Fallo al prender, pitido', N'1', N'2024-10-24', N'25/10/2024', 12, -2, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (69, 44352657, N'Samsung Galaxy Ace 4', N'Samsung Galaxy Ace 4', N'Resert + Destraba  ', N'1', N'2024-10-24', N'24/10/2024', 13, 0, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (70, 50483123, N'Notebook ASUS TUF F15', N'Notebook ASUS TUF F15', N'No reconoce el disco', N'1', N'2024-10-24', N'', 12, 0, 1, N'Con cargador', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (71, 32725216, N'CHUWI gris', N'CHUWI gris', N'Teclado Bloqueado', N'1', N'2024-10-25', N'', 12, 0, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (72, 56469785, N'A02s Samsung', N'A02s Samsung', N'Cambio Display', N'2', N'2024-10-26', N'29/10/2024', 13, 2097, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (73, 50483123, N'Notebook', N'ASUS', N'FORMATO Y RESPALDO', N'1', N'2024-10-26', N'', 12, 790, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (74, 53743227, N'SAMSUN A31', N'SAMSUN A31', N'Cambio Display
Bruno Morales', N'2', N'2024-10-28', N'29/10/2024', 13, 3200, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (75, 33004514, N'Celular', N'motorola ', N'Cambio de pantalla', N'2', N'2024-10-28', N'02/11/2024', 13, 2900, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (76, 43424635, N'Redmi 10', N'Redmi 10', N'No carga, se cambió el flex anteriormente ', N'1', N'2024-10-28', N'29/10/2024', 13, 0, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (77, 50274998, N'Celular redmi note 12s', N'NOTE 12S', N'PANTALLA 3200$', N'2', N'2024-10-28', N'29/10/2024', 13, 3200, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (78, 51788904, N'CELULAR Y9A', N'CELULAR Y9A', N'PANTALLA', N'2', N'2024-10-28', N'04/11/2024', 13, 2100, 4, N'2100 PREUPUESTO', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (79, 57154577, N'Celular', N'REDMI 13C', N'CAMBIO DE PANTALLA Y TRATAMIENTO MOJADO', N'2', N'2024-10-29', N' ', 13, 3000, 5, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (80, 49672911, N'CONSOLA PS5 PABLO TABAREZ', N'PS5 ', N'NO PRENDE - GARANTÍA', N'1', N'2024-10-29', N'', 12, 0, 1, N'EN GARANTÍA POR SEGUNDA VEZ', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (81, 39581227, N'Celular', N'tablet', N'formato', N'2', N'2024-10-30', N'04/11/2024', 13, 400, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (82, 25116105, N'REDMI A2', N'REDMI A2', N'Mojado, no carga - Teresa Ciancio', N'2', N'2024-10-30', N'', 13, 0, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (83, 49606289, N'Samsung A145', N'Samsung A145', N'Mojado - Presupuestar
Rodrigo Rocha', N'2', N'2024-10-31', N'04/11/2024', 13, 0, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (84, 43581570, N'Notebook HP GRIS', N'Notebook HP GRIS', N'Quedó trancada en logo de HP
CON INFORMACION 
Walkiria Martinez', N'1', N'2024-10-31', N'', 12, 1, 1, N'CON INFORMACION ', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (85, 44525557, N'Celular A22 5G', N'A22 5G', N'PANTALLA A225G + HUMEDAD $3000', N'2', N'2024-10-31', N'31/10/2024', 13, 3000, 4, N'PANTALLA A225G + HUMEDAD $3000', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (86, 49098088, N'REDMI 10 5G', N'REDMI 10 5G', N'CAMBIO DISPLAY', N'2', N'2024-11-01', N'01/11/2024', 13, 2200, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (87, 47124075, N'REDMI NOTE9', N'REDMI NOTE9', N'Se reinicia

Ana Montero
Cristian Delgado', N'2', N'2024-11-01', N'07/11/2024', 13, 0, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (88, 41432581, N'ZTE A71', N'ZTE A71', N'Cmbio Display', N'2', N'2024-11-02', N'09/11/2024', 13, 2300, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (89, 43424635, N'NOTE 10S M210K7BL', N'NOTE 10S M210K7BL', N'NO CARGA', N'2', N'2024-11-04', N'05/11/2024', 13, 0, 4, N'NOTE 10S M210K7BL NICOLAS UMPIERREZ', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (90, 45552527, N'6S PLUS', N'CELULAR', N'CALIENTA', N'2', N'2024-11-04', N'05/11/2024', 13, 0, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (91, 37455656, N'TORRE', N'HP Negra', N'Posible memoria ram', N'1', N'2024-11-04', N'05/11/2024', 12, 0, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (92, 50767765, N'Redmi 10', N'Redmi 10', N'Cambio de display', N'2', N'2024-11-04', N'05/11/2024', 13, 2100, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (93, 37151541, N'Impresora', N'EPSON L3150', N'RESET ', N'4', N'2024-11-04', N'05/11/2024', 12, 690, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (94, 35579084, N'SAMSUNG J4', N'SAMSUNG J4', N'CAmbio de Display', N'2', N'2024-11-05', N'05/11/2024', 2, 2300, 4, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (95, 45285179, N'Torre PC', N'Torre PC', N'Cambio de procesador', N'1', N'2024-11-05', N'', 12, 225, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (96, 43595206, N'Celular A042', N'A04 $2300 PANTALLA SILVANA RODRIGUEZ', N'PANTALLA 2300$ A04 ', N'2', N'2024-11-06', N'', 2, 2300, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (97, 56343799, N'iphone 8', N'IPHONE 8 JUAN MANUE ', N'NO PRENDE - JUAN MANUEL MARTINEZ ', N'2', N'2024-11-07', N'', 13, 12, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (98, 35977783, N'Impresora Epson L395', N'Impresora Epson L395', N'No imprime bien', N'4', N'2024-11-07', N'', 12, 0, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (99, 55055925, N'Celular 9A ALEJANDRO SAULE', N'Celular 9A ALEJANDRO SAULE', N'PANTALLA', N'2', N'2024-11-08', N'', 13, 2300, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (100, 30980379, N'Y9 2019 Huawei', N'Y9 2019 Huawei', N'Cambio de Display', N'2', N'2024-11-09', N'', 13, 2500, 1, N'', 0)
INSERT [dbo].[SERVICIO] ([NumeroOrden], [CICliente], [TipoEquipo], [Modelo], [TrabajoARealizar], [TipoServicio], [FechaRecibido], [FechaFinalizado], [Tecnico], [PrecioReparacion], [IdEstado], [Nota], [Borrado]) VALUES (101, 45438642, N'Impresora Canon G3110', N'Impresora Canon G3110', N'Se quedó sin tienta imprimiendo', N'2', N'2024-11-09', N'', 2, 0, 1, N'', 0)
SET IDENTITY_INSERT [dbo].[SERVICIO] OFF
GO
SET IDENTITY_INSERT [dbo].[TIPOSERVICIO] ON 

INSERT [dbo].[TIPOSERVICIO] ([IdTipoServicio], [NombreServicio]) VALUES (1, N'Reparación PC')
INSERT [dbo].[TIPOSERVICIO] ([IdTipoServicio], [NombreServicio]) VALUES (2, N'Reparación de Celular')
INSERT [dbo].[TIPOSERVICIO] ([IdTipoServicio], [NombreServicio]) VALUES (4, N'Reparación de Impresora')
INSERT [dbo].[TIPOSERVICIO] ([IdTipoServicio], [NombreServicio]) VALUES (8, N'Reparacion Estufas')
INSERT [dbo].[TIPOSERVICIO] ([IdTipoServicio], [NombreServicio]) VALUES (9, N'Reparacion Consola')
INSERT [dbo].[TIPOSERVICIO] ([IdTipoServicio], [NombreServicio]) VALUES (10, N'Garantía')
INSERT [dbo].[TIPOSERVICIO] ([IdTipoServicio], [NombreServicio]) VALUES (11, N'Otro')
SET IDENTITY_INSERT [dbo].[TIPOSERVICIO] OFF
GO
INSERT [dbo].[USUARIO] ([CI], [Pass], [Rol]) VALUES (456, N'456', N'Admin')
GO
ALTER TABLE [dbo].[GARANTIA]  WITH CHECK ADD  CONSTRAINT [GARANTIA_FK] FOREIGN KEY([NumeroOrden])
REFERENCES [dbo].[SERVICIO] ([NumeroOrden])
GO
ALTER TABLE [dbo].[GARANTIA] CHECK CONSTRAINT [GARANTIA_FK]
GO
ALTER TABLE [dbo].[SERVICIO]  WITH CHECK ADD  CONSTRAINT [FK_Tecnico1] FOREIGN KEY([Tecnico])
REFERENCES [dbo].[EMPLEADO] ([IdEmpleado])
GO
ALTER TABLE [dbo].[SERVICIO] CHECK CONSTRAINT [FK_Tecnico1]
GO
ALTER TABLE [dbo].[SERVICIO]  WITH CHECK ADD  CONSTRAINT [SERVICIO_CLIENTE_FK1] FOREIGN KEY([CICliente])
REFERENCES [dbo].[CLIENTE] ([CI])
GO
ALTER TABLE [dbo].[SERVICIO] CHECK CONSTRAINT [SERVICIO_CLIENTE_FK1]
GO
ALTER TABLE [dbo].[SERVICIO]  WITH CHECK ADD  CONSTRAINT [SERVICIO_ESTADO_FK1] FOREIGN KEY([IdEstado])
REFERENCES [dbo].[ESTADOSERVICIO] ([IdEstado])
GO
ALTER TABLE [dbo].[SERVICIO] CHECK CONSTRAINT [SERVICIO_ESTADO_FK1]
GO
ALTER TABLE [dbo].[USUARIO]  WITH CHECK ADD  CONSTRAINT [USUARIO_FK] FOREIGN KEY([CI])
REFERENCES [dbo].[CLIENTE] ([CI])
GO
ALTER TABLE [dbo].[USUARIO] CHECK CONSTRAINT [USUARIO_FK]
GO
/****** Object:  StoredProcedure [dbo].[SP_Cambiar_Password]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Cambiar_Password] 
@CI int, @PassActual VARCHAR(20), @PassNueva VARCHAR(20)
AS
BEGIN
	UPDATE Usuario
	SET Pass = @PassNueva
	WHERE CI = @CI 
	AND Pass = @PassActual
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Eliminiar_Empleado]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Eliminiar_Empleado]
@IdEmpleado int
as
begin
delete from Empleado where IdEmpleado = @IdEmpleado
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Eliminiar_Servicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Eliminiar_Servicio]
@NumeroOrden int
as
begin
delete from GARANTIA
where @NumeroOrden = NumeroOrden
update SERVICIO
set Borrado = 1
where @NumeroOrden = NumeroOrden
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Eliminiar_TipoServicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Eliminiar_TipoServicio]
@IdTipoServicio int
as
begin
delete from TIPOSERVICIO where IdTipoServicio = @IdTipoServicio
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Cliente]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Listar_Cliente]
as
begin
	Select * from CLIENTE
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Empleado]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Empleado]
as
begin
select * from Empleado
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_EstadoServicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Listar_EstadoServicio]
as
begin
select * from ESTADOSERVICIO
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Garantia]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create procedure [dbo].[SP_Listar_Garantia]
as
begin
select * from GARANTIA
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Nota]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_Nota]
as
begin
select * from NOTA
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Servicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Listar_Servicio]
as
begin
select *,CLIENTE.Nombre AS NombreCliente, CLIENTE.Telefono  from SERVICIO inner join CLIENTE on SERVICIO.CICliente = CLIENTE.CI where Borrado = 0 order by NumeroOrden desc
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_TipoServicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[SP_Listar_TipoServicio]
as
begin
select * from TIPOSERVICIO
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Listar_Usuarios]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[SP_Listar_Usuarios]
AS
BEGIN
SELECT * from USUARIO
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Modificar_EstadoServicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Modificar_EstadoServicio](
  @NumeroOrden INT,
  @IdEstado INT,
  @FechaFinalizado varchar(10)
)
AS
BEGIN
  UPDATE Servicio 
  SET IdEstado = @IdEstado,FechaFinalizado=' '
  WHERE NumeroOrden = @NumeroOrden;

  IF @IdEstado = 4
  BEGIN
    UPDATE Servicio 
    SET FechaFinalizado = CONVERT(VARCHAR, GETDATE(), 103)
    WHERE NumeroOrden = @NumeroOrden;
  END
END;
GO
/****** Object:  StoredProcedure [dbo].[SP_Modificar_Servicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SP_Modificar_Servicio](
@NumeroOrden int,
@CICliente int,
@TipoEquipo varchar(200),
@Modelo varchar(200),
@TrabajoARealizar varchar(200),
@TipoServicio varchar(200),
@FechaRecibido varchar(10),
@FechaFinalizado varchar(10),
@Tecnico int,
@PrecioReparacion int,
@IdEstado int,
@Nota varchar(200),
@Borrado bit
)
as
begin
update Servicio 
set 
	CICliente=@CICliente,
	TipoEquipo=@TipoEquipo,
	Modelo=@Modelo,
	TrabajoARealizar=@TrabajoARealizar,
	TipoServicio=@TipoServicio,
	FechaRecibido=@FechaRecibido,
	FechaFinalizado=@FechaFinalizado,
	Tecnico=@Tecnico,
	PrecioReparacion=@PrecioReparacion,
	IdEstado=@IdEstado,
	Nota=@Nota,
    Borrado=@Borrado
where NumeroOrden=@NumeroOrden;
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Obtener_Servicio_Id]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[SP_Obtener_Servicio_Id]
@NumeroOrden int
as
begin
	select s.NumeroOrden,
		   s.CICliente,
		   s.TipoEquipo,
		   s.Modelo,
		   s.TrabajoARealizar,
		   s.TipoServicio,
		   s.FechaRecibido,
		   s.FechaFinalizado,
		   e.IdEmpleado as Tecnico,
		   e.NombreEmpleado as NombreTecnico,
		   s.PrecioReparacion,
		   s.IdEstado,
		   s.Nota,
		   s.Borrado
  from servicio s inner join empleado e on e.IdEmpleado = s.Tecnico
  where s.NumeroOrden = @NumeroOrden
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Obtener_Usuario]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Obtener_Usuario] 
@CI int
AS
BEGIN
SELECT * from USUARIO where CI=@CI
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Registrar_Cliente]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Registrar_Cliente]
@CI int,
@RUT varchar(12) = null,
@RazonSocial varchar(150) = null,
@Nombre varchar(50),
@Apellido varchar(50),
@Telefono varchar(20),
@Mail varchar(100)
as
begin
	insert into CLIENTE values (@CI,@RUT,@RazonSocial,@Nombre,@Apellido,@Telefono,@Mail)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Obtener_Cliente]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Obtener_Cliente] 
@CI int
AS
BEGIN
SELECT * from Cliente where CI=@CI
END
GO
/****** Object:  StoredProcedure [dbo].[SP_Modificar_Cliente]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Modificar_Cliente](
@CI int,
@Nombre varchar(50),
@Apellido varchar(50),
@RUT varchar(12),
@RazonSocial varchar(150),
@Telefono varchar(20),
@Mail varchar(100)
)
as
begin
update CLIENTE 
set 
	Nombre=@Nombre,
	Apellido=@Apellido,
	Telefono=@Telefono,
	RazonSocial=@RazonSocial,
	RUT=@RUT,
	Mail=@Mail
where CI=@CI;

end
GO
/****** Object:  StoredProcedure [dbo].[SP_Registrar_Empleado]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Registrar_Empleado]
@NombreEmpleado varchar(50)
as
begin
	insert into EMPLEADO values (@NombreEmpleado)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Registrar_Garantia]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Registrar_Garantia](
    @NumeroOrden INT,
    @FechaInicio VARCHAR(10),
    @FechaFinal varchar(10)
)
as
begin
    insert into GARANTIA values (@NumeroOrden,@FechaInicio,@FechaFinal)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Registrar_Servicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[SP_Registrar_Servicio](
@CICliente int,@TipoEquipo VARCHAR(200),
@Modelo VARCHAR(200),@TrabajoARealizar VARCHAR(200),@TipoServicio VARCHAR(100),
@FechaRecibido varchar(10),@FechaFinalizado varchar(10),@Tecnico VARCHAR(200),
@PrecioReparacion int,@IdEstado int,@Nota varchar(100),@Borrado bit
)
as
begin
insert into Servicio(CICliente,TipoEquipo,Modelo,TrabajoARealizar,TipoServicio,
FechaRecibido,FechaFinalizado,Tecnico,PrecioReparacion,IdEstado,Nota,Borrado)
values (
@CICliente,@TipoEquipo,@Modelo,@TrabajoARealizar,@TipoServicio,
@FechaRecibido,@FechaFinalizado,@Tecnico,@PrecioReparacion,@IdEstado,@Nota,@Borrado)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Registrar_TipoServicio]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Registrar_TipoServicio]
@NombreServicio varchar(50)
as
begin
	insert into TIPOSERVICIO values (@NombreServicio)
end
GO
/****** Object:  StoredProcedure [dbo].[SP_Vincular_Ordenes]    Script Date: 1/31/2025 3:40:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SP_Vincular_Ordenes] 
@IdServicio int, @IdServicioVinculado int 
AS
BEGIN
	UPDATE Vinculado
	SET IdServicio  = @IdServicio, IdServicioVinculado =  @IdServicioVinculado
END
GO

/****** Object:  StoredProcedure [dbo].[SP_Obtener_Servicio_Filtros]    Script Date: 9/2/2025 6:13:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[SP_Obtener_Servicio_Filtros]
    @TipoEquipo NVARCHAR(200) = NULL,
    @TipoServicio VARCHAR(100) = NULL,
    @IdEstado VARCHAR(100) = NULL,
	@Tecnico VARCHAR(100) = NULL,
    @SearchCriteria NVARCHAR(50) = NULL,
    @NumeroPagina INT = NULL,
    @TamanoPagina INT = NULL,
	@FechaRecibido DATE =  NULL
AS
BEGIN
    SET NOCOUNT ON;

	DECLARE @ServiciosFiltrados TABLE (
		NumeroOrden NVARCHAR(50),
		CICliente NVARCHAR(50),
		TipoEquipo NVARCHAR(50),
		Modelo NVARCHAR(50),
		TrabajoARealizar NVARCHAR(MAX),
		TipoServicio NVARCHAR(50),
		FechaRecibido varchar(10),
		FechaFinalizado varchar(10),
		Tecnico INT,
		PrecioReparacion DECIMAL(18,2),
		IdEstado INT,
		Nota NVARCHAR(MAX),
		Borrado BIT,
		NombreCliente VARCHAR(50),
		Telefono VARCHAR(20)
	)


    -- Tabla temporal para aplicar filtros una sola vez
    INSERT INTO @ServiciosFiltrados
        SELECT 
            S.*,C.Nombre AS NombreCliente, C.Telefono
		FROM SERVICIO S
			INNER JOIN CLIENTE C 
				ON S.CICliente = C.CI
			INNER JOIN EMPLEADO E 
				ON E.IdEmpleado = S.Tecnico
			INNER JOIN TIPOSERVICIO T 
				ON T.IdTipoServicio = S.TipoServicio
			INNER JOIN ESTADOSERVICIO ES 
				ON ES.IdEstado = S.IdEstado
        WHERE 
            (@TipoEquipo IS NULL OR s.TipoEquipo LIKE '%' + @TipoEquipo + '%') AND
            (@TipoServicio IS NULL OR @TipoServicio = '' OR T.NombreServicio = @TipoServicio) AND
            (@IdEstado IS NULL OR @IdEstado = '' OR ES.Estado = @IdEstado) AND
			(@Tecnico IS NULL OR @Tecnico = '' OR E.NombreEmpleado = @Tecnico) AND
			(@FechaRecibido IS NULL OR S.FechaRecibido = CONVERT(VARCHAR(10), @FechaRecibido, 23)) AND
			(@SearchCriteria IS NULL OR (s.CICliente LIKE '%' + @SearchCriteria + '%' OR s.NumeroOrden LIKE '%' + @SearchCriteria + '%'))
     -- Resultado paginado
    SELECT *
    FROM @ServiciosFiltrados
    ORDER BY FechaRecibido DESC
    OFFSET (@NumeroPagina - 1) * @TamanoPagina ROWS
    FETCH NEXT @TamanoPagina ROWS ONLY;

    -- Total de registros sin paginación
    SELECT COUNT(*) AS TotalRegistros
    FROM @ServiciosFiltrados;
END
GO
