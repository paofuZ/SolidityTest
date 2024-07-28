// SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.17;

contract HelloWorld {
    string storeMsg;

    enum State {
        HasOwner,
        NoOwner
    }

    enum ActionChoices {
        GoLeft, // 0
        GoRight, // 1
        GoUp, // 2
        GoDown // 3
    }

    ActionChoices choice;

    type Weight is uint128;
    Weight w = Weight.wrap(100);
    uint128 u = Weight.unwrap(w);

    address addr = 0x690B9A9E9aa1C9dB991C7721a92d351Db4FaC990;
    address payable addr_pay =
        payable(0x8306300ffd616049FD7e4b0354a64Da835c1A81C);

    function set(string memory message) public {
        storeMsg = message;
    }

    function get() public view returns (string memory) {
        return storeMsg;
    }

    function getChoice() public view returns (ActionChoices) {
        return choice;
    }

    function getUnwrap() public view returns (uint128) {
        return u;
    }

    function get_balance() public view returns (uint256) {
        return address(this).balance; //获取地址账户余额
    }

    function get_code() public view returns (bytes memory) {
        return address(this).code; //获取合约代码
    }

    function get_codehash() public view returns (bytes32) {
        return address(this).codehash; //获取合约代码的hash值
    }

    struct Book {
        string title;
        string author;
        uint256 isbn;
    }

    mapping(uint256 => Book) public books;

    function addBook(
        uint256 _id,
        string memory _title,
        string memory _author,
        uint256 _isbn
    ) public {
        books[_id] = Book(_title, _author, _isbn);
    }

    function getBook(uint256 _id)
        public
        view
        returns (
            string memory,
            string memory,
            uint256
        )
    {
        Book storage book = books[_id];
        return (book.title, book.author, book.isbn);
    }

    // function sumToN(uint16 n) public pure returns (uint16) {
    //     uint16 sum = 0;
    //     uint16 i;
    //     for (i = 1; i <= n; i++) {
    //         // init-statement是 i=1 ; test-statement是 i<=n ; iteration-statement是 i++
    //         sum += i;
    //     }
    //     return sum;
    // }

    function sumToN(uint16 n) public pure returns (uint16) {
        uint16 sum = 0;
        uint16 i = 1;
        while (i <= n) {
            //只改了这一行
            sum += i;
            i++; // 修改循环变量的值
        }
        return sum;
    }
}
