USE [GDCars]
GO
/****** Object:  Table [dbo].[GDC_Bancos]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Bancos](
	[Id] [uniqueidentifier] NOT NULL,
	[Modelo] [char](1) NOT NULL,
	[Multimidia] [bit] NOT NULL,
	[Cor] [varchar](10) NOT NULL,
	[Valor] [decimal](18, 0) NOT NULL,
	[IdUpload] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Clientes]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Clientes](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](30) NOT NULL,
	[RG] [varchar](12) NOT NULL,
	[CPF] [varchar](14) NOT NULL,
	[Tipo] [char](1) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[IdEndereco] [uniqueidentifier] NULL,
	[DataNascimento] [date] NOT NULL,
 CONSTRAINT [PK__GDC_Clie__3214EC073E8C11F2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Cores_Externa]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Cores_Externa](
	[Id] [uniqueidentifier] NOT NULL,
	[Estilo] [char](1) NOT NULL,
	[Valor] [decimal](18, 0) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Enderecos]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Enderecos](
	[Id] [uniqueidentifier] NOT NULL,
	[Endereco] [varchar](30) NOT NULL,
	[Numero] [varchar](5) NOT NULL,
	[Complemento] [varchar](5) NULL,
	[CEP] [varchar](9) NOT NULL,
	[Bairro] [varchar](30) NULL,
	[Estado] [varchar](30) NULL,
	[Cidade] [varchar](30) NULL,
 CONSTRAINT [PK__GDC_Ende__3214EC07C7BD40EA] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Formas_Pagamentos]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Formas_Pagamentos](
	[Id] [uniqueidentifier] NOT NULL,
	[Modelo] [varchar](30) NOT NULL,
	[Tipo_Cliente] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Logins]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Logins](
	[Id] [uniqueidentifier] NOT NULL,
	[Nome] [varchar](20) NOT NULL,
	[SobreNome] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Senha] [varchar](50) NOT NULL,
	[DataNascimento] [varchar](10) NOT NULL,
	[Data_Inclusao] [datetime] NOT NULL,
	[Tipo_Acesso] [char](1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Perfomances]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Perfomances](
	[Id] [uniqueidentifier] NOT NULL,
	[ValorTotal] [decimal](18, 0) NOT NULL,
	[IdRoda] [uniqueidentifier] NULL,
	[IdBanco] [uniqueidentifier] NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[IdCor] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Rodas]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Rodas](
	[Id] [uniqueidentifier] NOT NULL,
	[Modelo] [varchar](20) NOT NULL,
	[Cor] [varchar](10) NOT NULL,
	[Aro] [int] NOT NULL,
	[Valor] [int] NOT NULL,
	[IdUpload] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Uploads]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Uploads](
	[Id] [uniqueidentifier] NOT NULL,
	[Data_Inclusao] [datetime] NOT NULL,
	[Nome_Arquivo] [varchar](200) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Veiculos]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Veiculos](
	[Id] [uniqueidentifier] NOT NULL,
	[Fabricante] [varchar](20) NOT NULL,
	[Modelo] [varchar](20) NOT NULL,
	[Ano] [datetime] NOT NULL,
	[Valor] [decimal](18, 0) NOT NULL,
	[Tipo] [char](10) NULL,
	[IdUpload] [uniqueidentifier] NULL,
 CONSTRAINT [PK__GDC_Veic__3214EC07B6524FD9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GDC_Vendas]    Script Date: 02/09/2017 13:53:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GDC_Vendas](
	[Id] [uniqueidentifier] NOT NULL,
	[Valor] [decimal](18, 0) NOT NULL,
	[Tipo_Entrega] [char](1) NOT NULL,
	[Status] [char](1) NULL,
	[Termo_Autorizacao] [bit] NOT NULL,
	[IdPerformance] [uniqueidentifier] NULL,
	[IdCliente] [uniqueidentifier] NULL,
	[IdFormaPagamento] [uniqueidentifier] NULL,
	[IdVeiculo] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[GDC_Bancos]  WITH CHECK ADD FOREIGN KEY([IdUpload])
REFERENCES [dbo].[GDC_Uploads] ([Id])
GO
ALTER TABLE [dbo].[GDC_Clientes]  WITH CHECK ADD  CONSTRAINT [FK__GDC_Clien__IdEnd__145C0A3F] FOREIGN KEY([IdEndereco])
REFERENCES [dbo].[GDC_Enderecos] ([Id])
GO
ALTER TABLE [dbo].[GDC_Clientes] CHECK CONSTRAINT [FK__GDC_Clien__IdEnd__145C0A3F]
GO
ALTER TABLE [dbo].[GDC_Perfomances]  WITH CHECK ADD FOREIGN KEY([IdBanco])
REFERENCES [dbo].[GDC_Bancos] ([Id])
GO
ALTER TABLE [dbo].[GDC_Perfomances]  WITH CHECK ADD  CONSTRAINT [FK__GDC_Perfo__IdCli__22AA2996] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[GDC_Clientes] ([Id])
GO
ALTER TABLE [dbo].[GDC_Perfomances] CHECK CONSTRAINT [FK__GDC_Perfo__IdCli__22AA2996]
GO
ALTER TABLE [dbo].[GDC_Perfomances]  WITH CHECK ADD FOREIGN KEY([IdCor])
REFERENCES [dbo].[GDC_Cores_Externa] ([Id])
GO
ALTER TABLE [dbo].[GDC_Perfomances]  WITH CHECK ADD FOREIGN KEY([IdRoda])
REFERENCES [dbo].[GDC_Rodas] ([Id])
GO
ALTER TABLE [dbo].[GDC_Rodas]  WITH CHECK ADD FOREIGN KEY([IdUpload])
REFERENCES [dbo].[GDC_Uploads] ([Id])
GO
ALTER TABLE [dbo].[GDC_Veiculos]  WITH CHECK ADD  CONSTRAINT [FK__GDC_Veicu__IdUpl__267ABA7A] FOREIGN KEY([IdUpload])
REFERENCES [dbo].[GDC_Uploads] ([Id])
GO
ALTER TABLE [dbo].[GDC_Veiculos] CHECK CONSTRAINT [FK__GDC_Veicu__IdUpl__267ABA7A]
GO
ALTER TABLE [dbo].[GDC_Vendas]  WITH CHECK ADD  CONSTRAINT [FK__GDC_Venda__IdCli__2C3393D0] FOREIGN KEY([IdCliente])
REFERENCES [dbo].[GDC_Clientes] ([Id])
GO
ALTER TABLE [dbo].[GDC_Vendas] CHECK CONSTRAINT [FK__GDC_Venda__IdCli__2C3393D0]
GO
ALTER TABLE [dbo].[GDC_Vendas]  WITH CHECK ADD FOREIGN KEY([IdFormaPagamento])
REFERENCES [dbo].[GDC_Formas_Pagamentos] ([Id])
GO
ALTER TABLE [dbo].[GDC_Vendas]  WITH CHECK ADD FOREIGN KEY([IdPerformance])
REFERENCES [dbo].[GDC_Perfomances] ([Id])
GO
ALTER TABLE [dbo].[GDC_Vendas]  WITH CHECK ADD  CONSTRAINT [FK__GDC_Venda__IdVei__2E1BDC42] FOREIGN KEY([IdVeiculo])
REFERENCES [dbo].[GDC_Veiculos] ([Id])
GO
ALTER TABLE [dbo].[GDC_Vendas] CHECK CONSTRAINT [FK__GDC_Venda__IdVei__2E1BDC42]
GO
