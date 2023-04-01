// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Todos {
    struct Todo {
        string text;
        bool completed;
        address owner;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        todos.push(Todo(_text, false, msg.sender));
        
        todos.push(Todo({ text: _text, completed: false, owner: msg.sender}));

        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }

    function update(uint _index, string calldata _text) public {
        // todos[_index].text = _text;
        // todos[_index].completed = true;
        // OR
        Todo storage todo = todos[_index];
        todo.text = _text;
        todo.completed = true;
    }

    function toggleCompleted(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}