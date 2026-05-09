// SPDX-License-Identifier: GLP-3.0
pragma solidity >=0.8.2. <0.9.0;

contract Eventos {

    uint256 private cantidad = 10;

    event cambiarValorCantidad (address invocador, uint valorAnterior, uint256 nuevoValor);

    //set
    function cambiarCantidad (uint256 _nuevaCantidad) public {
        uint256 valorAnterior = cantidad;
        cantidad = _nuevaCantidad;
        emit cambiarValorCantidad(msg.sender, valorAnterior, _nuevaCantidad);
    }

    //get
    function obtenerCantidad () public view returns(uint256){
        return cantidad;
    }

}