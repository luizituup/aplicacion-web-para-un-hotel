/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package mvc.model;

/**
 *
 * @author Luis
 */
public class Consumo {
    private int codigo;
    private int Cod_cliente;
    private int servicios;
    private int cantidad;
    private int fechaday;
    private int fechamonth;
    private int fechayear;

    public int getCantidad() {
        return cantidad;
    }

    public int getCod_cliente() {
        return Cod_cliente;
    }

    public int getCodigo() {
        return codigo;
    }

    public int getFechaday() {
        return fechaday;
    }

    public int getFechamonth() {
        return fechamonth;
    }

    public int getFechayear() {
        return fechayear;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public int getServicios() {
        return servicios;
    }

    public void setCod_cliente(int Cod_cliente) {
        this.Cod_cliente = Cod_cliente;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public void setFechaday(int fechaday) {
        this.fechaday = fechaday;
    }

    public void setFechamonth(int fechamonth) {
        this.fechamonth = fechamonth;
    }

    public void setFechayear(int fechayear) {
        this.fechayear = fechayear;
    }

    public void setServicios(int servicios) {
        this.servicios = servicios;
    }



}
