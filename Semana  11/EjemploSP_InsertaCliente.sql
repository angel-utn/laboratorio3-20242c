Create Procedure SP_CrearCliente(
    @IDCliente bigint,
    @Apellidos varchar(50),
    @Nombres varchar(50)
)
as Begin
    Insert into Clientes (IDCliente, Apellidos, Nombres, Estado)
    Values (@IDCliente, @Apellidos, @Nombres, 1)
End
Go
Alter Procedure SP_CrearCliente(
    @IDCliente bigint,
    @Apellidos varchar(50),
    @Nombres varchar(50)
)
as Begin
    Insert into Clientes (IDCliente, Apellidos, Nombres, Estado)
    Values (@IDCliente, @Apellidos, @Nombres, 0)
End

Exec SP_CrearCliente 9, 'Gonzalez', 'Gabriel'