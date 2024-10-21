-- Cuando se intente borrar un movimiento, no borrarlo y seleccionarlo en su lugar.
Create or Alter Trigger TR_BajaMovimiento ON Movimientos
Instead Of delete
as
Begin
    Select * From deleted
    delete from Movimientos Where IDMovimiento = (Select IDMovimiento from deleted)
End

Go

Select * From Movimientos

delete from Movimientos Where IDMovimiento = 8

