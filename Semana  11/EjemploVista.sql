Create View VW_InformacionClientes
As
Select Cli.Apellidos, Cli.Nombres, Count(*) As CantidadCuentas, Avg(Saldo) As PromedioSaldo
From Clientes Cli
Inner Join Cuentas C ON Cli.IDCliente = C.IDCliente
Group by Cli.Apellidos, Cli.Nombres