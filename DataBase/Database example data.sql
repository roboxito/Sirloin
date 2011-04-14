/****** Object:  Table [dbo].[Menu]    Script Date: 04/14/2011 13:23:37 ******/
DELETE FROM [Menu]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 04/14/2011 13:23:37 ******/
DELETE FROM [Users]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 04/14/2011 13:23:37 ******/
DELETE FROM [Pages]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 04/14/2011 13:23:37 ******/
SET IDENTITY_INSERT [Pages] ON
INSERT [Pages] ([PageID], [ShortID], [Title], [Description], [PageContent], [CreationDate], [LastModifiedDate], [Published]) VALUES (1, N'test001', N'titlo de pruebas ytyyhy', N'Pagina de pruea para probar la captura unhuh
sfssfsf
fs fs fsfs fs', N'<p>Prueba de pagina web</p>
<p>Prueba intranet bla bla</p>
<p>&nbsp;</p>
<p><img title="imagen" src="http://covers.oreilly.com/images/9780596100940/cat.gif" alt="descripcion" width="180" height="270" /></p>
<p>&nbsp;</p>
<h2>1.1&nbsp;&nbsp;&nbsp; &iquest;Qu&eacute; tecnolog&iacute;a debo usar?</h2>
<p>Primero antes de definir que tecnolog&iacute;a debemos usar, hay que definir qu&eacute; tipo de aplicaci&oacute;n es la que se va a desarrollar, algunos tipos son los siguientes:</p>
<ul>
<li><strong>Aplicaciones m&oacute;viles (pocket pc, celular, blackberry, iphone).</strong> Las aplicaciones de este tipo pueden desarrollarse como un aplicaci&oacute;n ligera o como una aplicaci&oacute;n enriquecida, una aplicaci&oacute;n enriquecida m&oacute;vil, debe soportar entorno desconectados y tener un esquema de sincronizaci&oacute;n, pero al ser m&oacute;viles existen muchas limitantes por la capacidad del equipo y los costos del mismo, as&iacute; como el costo de comunicaci&oacute;n (infraestructura de Wifi, Red 3g, costo de conexi&oacute;n, etc).</li>
<li><strong>Aplicaciones enriquecidas cliente/servidor</strong>. Este tipo de aplicaciones son desarrolladas como aplicaciones independientes que contienen una interface que muestra datos de manera &uacute;nica y especifica a la necesidades del usuario y requieren del acceso remoto a la informaci&oacute;n que se encuentra en&nbsp; un repositorio, ademas de tener una integraci&oacute;n con otras herramientas del usuario en su equipo cliente.</li>
<li><strong>Aplicaciones web enriquecidas (Ajax, jQuery, JSON, Silverlight, Flash, Adobe Air, etc).</strong> Estas aplicaciones pueden soportar m&uacute;ltiples plataformas y pueden mostrar interfaces graficas o de medios de manera flexible, pero se dependen del navegador y al correr dentro de un ambiente protegido se restringe el acceso a algunas caracter&iacute;sticas o herramientas instaladas en el cliente.</li>
<li><strong>Aplicaciones de servicio para comunicaci&oacute;n desacoplada entre componentes(interfaces).</strong> Estas aplicaciones no son para el uso del usuario, son aplicaciones que carecen de interface grafica, y son componentes que transforman informaci&oacute;n entre una fuente y un consumidor, se usan en casos donde el cliente hace uso de otro sistema y requiere intercambian informaci&oacute;n con otro sistema de manera transparente.</li>
<li><strong>Aplicaciones integradas con Microsoft Office. </strong>Son aplicaciones orientadas a la captura r&aacute;pida de informaci&oacute;n en formatos o para facilitar procesos repetitivos de captura de informaci&oacute;n por parte del cliente.</li>
<li><strong>Aplicaciones SharePoint Line of Business para portales de informaci&oacute;n de negocios.</strong> Son aplicaciones de inteligencia de negocios para el apoyo a la toma de decisiones, que permiten ver el flujo de informaci&oacute;n de procesos o del an&aacute;lisis de informaci&oacute;n de repositorios, estas aplicaciones est&aacute;n orientadas a la difusi&oacute;n o el apoyo gerencial.</li>
</ul>
<p><strong>Aplicaciones web.</strong> Aplicaciones que corren en la web y se acceden por medio de un navegador en entornos conectados, pero no hacen uso extenso de tecnolog&iacute;as RIA, son aplicaciones sencillas y con funciones muy especificas, como importaci&oacute;n de informaci&oacute;n a un repositorio o disparo de&nbsp;</p>', CAST(0x00009E7000C065E8 AS DateTime), CAST(0x00009EA700C63180 AS DateTime), 1)
INSERT [Pages] ([PageID], [ShortID], [Title], [Description], [PageContent], [CreationDate], [LastModifiedDate], [Published]) VALUES (2, N'test2', N'titulo', N'prueba de pagina', N'<div>
<p>dato 0001 1010101</p>
<p>dato 0002 prueba test</p>
<p>&nbsp;test test test test</p>
<p>asdads</p>
<p>&nbsp;asd asd a sd asd asd asd ads a ds asd</p>
</div>', CAST(0x00009E70013D9B08 AS DateTime), CAST(0x00009E8800D8CAD4 AS DateTime), 0)
INSERT [Pages] ([PageID], [ShortID], [Title], [Description], [PageContent], [CreationDate], [LastModifiedDate], [Published]) VALUES (3, N'test001', N'titulo', N'prueba de pagina', N'<div>prueba prueba <p>dato dato dato</p></div>', CAST(0x00009E70013F5600 AS DateTime), CAST(0x00009E70013F5600 AS DateTime), 0)
INSERT [Pages] ([PageID], [ShortID], [Title], [Description], [PageContent], [CreationDate], [LastModifiedDate], [Published]) VALUES (4, N'test001', N'titulo', N'prueba de pagina', N'<div>prueba prueba <p>dato dato dato</p></div>', CAST(0x00009E70013F572C AS DateTime), CAST(0x00009E70013F572C AS DateTime), 0)
INSERT [Pages] ([PageID], [ShortID], [Title], [Description], [PageContent], [CreationDate], [LastModifiedDate], [Published]) VALUES (5, N'prueba001', N'titulo', N'prueba de pagina', N'<p>prueba de pagina 0001</p>
<p>&nbsp;</p>
<p>fdhcfhfc</p>
<p>vgjvgvf</p>
<p>fcjcfcc</p>', CAST(0x00009E70013F5858 AS DateTime), CAST(0x00009E8800C74E44 AS DateTime), 0)
INSERT [Pages] ([PageID], [ShortID], [Title], [Description], [PageContent], [CreationDate], [LastModifiedDate], [Published]) VALUES (6, N'test001', N'titulo', N'prueba de pagina', N'<div>prueba prueba <p>dato dato dato</p></div>', CAST(0x00009E7001623684 AS DateTime), CAST(0x00009E7001623684 AS DateTime), 0)
INSERT [Pages] ([PageID], [ShortID], [Title], [Description], [PageContent], [CreationDate], [LastModifiedDate], [Published]) VALUES (7, N'test001', N'titulo', N'prueba de pagina', N'<div>prueba prueba <p>dato dato dato</p></div>', CAST(0x00009E7001624DF4 AS DateTime), CAST(0x00009E7001624DF4 AS DateTime), 0)
SET IDENTITY_INSERT [Pages] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 04/14/2011 13:23:37 ******/
SET IDENTITY_INSERT [Users] ON
INSERT [Users] ([UserID], [Username], [Password], [FullName]) VALUES (1, N'admin', N'3c1c88f0b0fec9b5f539c3d6b0577bd138bd157d604125a53e60e35cf940a5fe', N'Administrator')
SET IDENTITY_INSERT [Users] OFF
/****** Object:  Table [dbo].[Menu]    Script Date: 04/14/2011 13:23:37 ******/
INSERT [Menu] ([iditem], [MenuText], [idparent], [idpage]) VALUES (1, N'Home', 0, 0)
INSERT [Menu] ([iditem], [MenuText], [idparent], [idpage]) VALUES (2, N'Option 1', 0, 0)
INSERT [Menu] ([iditem], [MenuText], [idparent], [idpage]) VALUES (3, N'Option 2', 0, 0)
INSERT [Menu] ([iditem], [MenuText], [idparent], [idpage]) VALUES (4, N'Option 3', 0, 0)
INSERT [Menu] ([iditem], [MenuText], [idparent], [idpage]) VALUES (5, N'Test page', 2, 1)
INSERT [Menu] ([iditem], [MenuText], [idparent], [idpage]) VALUES (6, N'Test page 2', 2, 2)
INSERT [Menu] ([iditem], [MenuText], [idparent], [idpage]) VALUES (7, N'test 45', 6, 3)
