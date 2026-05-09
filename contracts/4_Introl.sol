// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Intro {

    uint256 private cantidad; //estructura: tipo, estado, nombre
    string private nombre = "UPAO";

    constructor (uint256 _cantidad) { //se ejecuta una vez al desplegarse
        cantidad = _cantidad;
    }

    //set
    function modificarCantidad (uint256 _nuevaCantidad) public{
        cantidad = _nuevaCantidad;
    }

    //get
    function obtenerCantidad () public view returns (uint256) {
        return cantidad;
    }

    function obtenerNombre() public view returns(string memory){
        return nombre;
    }

    //operacion random
    function obtenerSuma(uint256 v1, uint256 v2) public pure returns(uint256){
        return v1 + v2;
    }

}