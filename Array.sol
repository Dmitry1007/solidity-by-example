// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Array {
    uint[] public arr;
    uint[] public arr2 = [1,2,3];
    uint[10] public arr3FixedSize;

    function get(uint i) public view returns (uint) {
        return arr[i];
    }

    function getArr() public view returns (uint[] memory) {
        return arr;
    }

    function push(uint i) public {
        arr.push(i);
    }

    function pop() public {
        // remove last element
        arr.pop();
    }

    function getLength() public view returns (uint) {
        return arr.length;
    }

    function remove(uint index) public {
        delete arr[index];
    }

    function examples() external pure returns(uint) {
        // create array in memory, only fixed size can be created
        uint[] memory a = new uint[](5);
        return a[0];
    }

    function removeByShifting(uint index) public {
        require(index < arr.length, "index out of bound");

        for (uint i = index; i < arr.length; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }

    function test() external {
        arr = [1, 2, 3, 4, 5];
        remove(2);
        // [1, 2, 4, 5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);

        arr = [1];
        remove(0);
        // []
        assert(arr.length == 0);
    }

    function arrayReplacefromEnd(uint index) public {
        arr[index] = arr[arr.length - 1];
        arr.pop();
    }
}