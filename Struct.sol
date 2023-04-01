// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract Todos {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) public {
        // 3 ways to initialize a struct
        todos.push(Todo(_text, false));
        
        todos.push(Todo({ text: _text, completed: false}));

        Todo memory todo;
        todo.text = _text;
        todos.push(todo);
    }
}