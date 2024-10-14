-- Asignación con SET
Declare @SaldoPromedio money
Set @SaldoPromedio = (Select Avg(Saldo) From Cuentas)
Select * From Cuentas Where Saldo > @SaldoPromedio
Go
-- Asignación con Select
Declare @SaldoPromedio money
Select @SaldoPromedio = Avg(Saldo) From Cuentas
Select * From Cuentas Where Saldo > @SaldoPromedio