# Bank Tech Test



## Instructions

You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)

Deposits, withdrawal.

Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).


## Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00


## Approach

I will create this in Ruby so that from the command line the user can:

Make a despoit
Make a withdrawal
Cannot withdraw more than is deposited
Print a statement
I will also be able to add previous transactions to simulate previous deposits and withdrawals


## User stories

As a bank user,
Because I want to add money to my account,
I can make a deposit

As a bank user,
Because I want to take money out of my account,
I can make a withdrawal

As a bank user,
Because I want to view my current balance,
I can print my balance in the correct format

As a banker,
Because I want to add user history to the new system,
I can add previous transactions to an account
