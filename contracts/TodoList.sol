pragma solidity >=0.4.22 <0.9.0;

contract TodoList{
    uint public taskCount = 0;

    struct Task{
        uint id;
        string content;
        bool completed;
    }
    mapping(uint => Task) public task;
    constructor() public {
        createTask("Check Out WickedGamer");
    }

    function createTask(string memory _content) public{
        taskCount ++;
        task[taskCount] = Task(taskCount, _content, false);
    }

}

