pragma solidity >=0.5.0;

contract TodoList {
	uint public taskCount = 0; //state variable

  struct Task {
		uint id;
		string content;
		bool completed;
  }

	mapping(uint => Task) public tasks; //we made a key value pair

	constructor() public {
		createTask("Primul task");
	}

	function createTask(string memory _content) public {
		taskCount ++;
		tasks[taskCount] = Task(taskCount, _content, false);
	}

}
