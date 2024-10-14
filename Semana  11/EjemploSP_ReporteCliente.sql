Create or Alter Procedure SP_CuentasxCliente(
    @IDCliente int
)
As Begin
    Select 
        Cli.Apellidos, 
        Cli.Nombres, 
        C.IDCuenta,
        C.FechaApertura,
        TC.Nombre as TipoDeCuenta,
        C.Saldo
    From Clientes Cli
    Inner Join Cuentas C ON Cli.IDCliente = C.IDCliente
    Inner Join TiposCuenta TC ON TC.IDTipoCuenta = C.IDTipoCuenta
    Where Cli.IDCliente = @IDCliente
End

Exec SP_CuentasxCliente 1