Create Function FN_ObtenerSaldoCuenta(
    @IDCuenta int 
)
returns money
As
Begin
    Declare @TotalCreditos money
    Declare @TotalDebitos money

    Set @TotalCreditos = (
        Select IsNull(Sum(Importe), 0) From Movimientos Where IDCuenta = @IDCuenta And TipoMovimiento = 'C'
    )

    Set @TotalDebitos = (
        Select IsNull(Sum(Importe), 0) From Movimientos Where IDCuenta = @IDCuenta And TipoMovimiento = 'D'
    )

    Return @TotalCreditos - @TotalDebitos
End