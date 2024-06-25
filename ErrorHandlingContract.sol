// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract ErrorHandlingContract {
    uint public value;
    
    function setVal(uint _val) public {
        require(_val > 0, "Value must be greater than zero");

        assert(_val != value);

        value = _val;
    }
    function operationDivision(uint _numerator, uint _denomenator) public pure returns (uint) {
        require(_denomenator != 0, "Cannot divide by zero.");

        if(_numerator % _denomenator != 0) {
            revert("Numerator must be divisble by denomenator");
        }
        return _numerator / _denomenator;
    }
}