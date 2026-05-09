// SPDX-License-Identifier: GLP-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Sender {

    uint256 private cantidad;
    address private cuentaInicial;

    constructor (uint256 _nuevaCantidad) {
        cantidad = _nuevaCantidad;
        cuentaInicial = msg.sender;
    }

    function obtenerCantidad () public view returns (uint256) {
        return cantidad;
    }

    function obtenerCuentaInicial () public view returns (address){
        return cuentaInicial;
    }

}