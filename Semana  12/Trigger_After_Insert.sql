-- Al agregar un cliente nuevo se agregue también una caja de ahorro con saldo $0 y límite $0 y fecha de apertura con fecha y hora actual.
Create Or Alter Trigger TR_NuevoCliente On Clientes
After Insert
As
Begin
    Begin try
    Begin transaction

        Declare @IDCliente int, @Nombres varchar(50), @TipoCuenta as char(2), @Limite money, @IDCuenta int
        Set @IDCliente = (Select IDCliente from inserted)
        Set @Nombres = (Select Nombres from inserted)
    
        If @Nombres = 'Analia' begin 
            Set @TipoCuenta = 'CC'
            Set @Limite = 10000000
        end
        Else begin
            Set @TipoCuenta = 'CA'
            Set @Limite = 0
        End
        
        -- Insert into Cuentas(IDCliente, IDTipoCuenta, FechaApertura, LimiteDescubierto, Saldo)
        -- Values (@IDCliente, 'CA', getdate(), 0, 0)
        
        Insert into Cuentas(IDCliente, IDTipoCuenta, FechaApertura, LimiteDescubierto, Saldo)
        Select IDCliente, @TipoCuenta, getdate(), @Limite, 0 from inserted

        -- Se le otorgue un crédito de $10000
        Set @IDCuenta = SCOPE_IDENTITY()
        Insert Into Movimientos (IDCuenta, Fecha, Importe, TipoMovimiento)
        Values (@IDCuenta, getdate(), 10000, 'C')

    If @@Trancount > 0 begin
        Commit transaction
    End
    
    end try
    Begin catch
        If @@TRANCOUNT > 0 Begin
            Rollback Transaction
        End
    End Catch
End

-- Creamos un cliente
Insert into Clientes(IDCliente, Apellidos, Nombres, Estado)
Values (3000, 'Simon', 'Pepito', 1)

Select * From Clientes
Select * From Cuentas
Select * From Movimientos