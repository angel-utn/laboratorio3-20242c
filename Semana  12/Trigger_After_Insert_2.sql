-- Crear un trigger que al agregar un movimiento lo registre y actualice el saldo de la cuenta
Create Trigger TR_NuevoMovimiento On Movimientos
After Insert
As Begin
    Begin TRY
        Begin Transaction

        Declare @TipoMovimiento char, @IDCuenta int, @Importe money

        SELECT  @TipoMovimiento = TipoMovimiento,
                @IDCuenta = IDCuenta,
                @Importe = Importe
        from inserted

        -- Si es un débito, que el importe sea negativo
        If @TipoMovimiento = 'D' Begin
            Set @Importe = @Importe * -1
        End

        Update Cuentas Set Saldo = Saldo + @Importe
        Where IDCuenta = @IDCuenta

        If @@TRANCOUNT > 0 begin
            Commit Transaction
        End
    End Try
    Begin Catch
        If @@TRANCOUNT > 0 begin
            Rollback Transaction
        End
    End Catch
End


Select * From Movimientos
Select * From Cuentas

-- Crear un movimiento de crédito
Insert Into Movimientos (IDCuenta, Fecha, Importe, TipoMovimiento)
Values (11, getdate(), 100, 'C')

-- Crear un movimiento de débito suficiente
Insert Into Movimientos (IDCuenta, Fecha, Importe, TipoMovimiento)
Values (11, getdate(), 70, 'D')


-- Crear un movimiento de débito insuficiente -- ERROR!
Insert Into Movimientos (IDCuenta, Fecha, Importe, TipoMovimiento)
Values (11, getdate(), 70, 'D')