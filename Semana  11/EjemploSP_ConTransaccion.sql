Create Procedure SP_ExtraerDinero(
    @IDCuenta int,
    @ImporteAExtraer money
)
As Begin

    Begin Transaction
    Begin Try 
        Insert into Movimientos (IDCuenta, Fecha, Importe, TipoMovimiento)
        Values(@IDCuenta, getdate(), @ImporteAExtraer, 'D')

        Update Cuentas Set Saldo = Saldo - @ImporteAExtraer Where IDCuenta = @IDCuenta

        Commit Transaction
    End Try
    Begin Catch
        Rollback Transaction
        Raiserror('Hubo un error al registrar la extraccion', 16, 1)
    End Catch
End


Select * From Cuentas Where IDCuenta = 2
Select * From Movimientos Where IDCuenta = 2

Exec SP_ExtraerDinero 2, 250