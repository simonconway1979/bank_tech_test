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


## Installing
Clone this repo: https://github.com/simonconway1979/bank_tech_test.git
In console run bundle


## Running tests
In console run:
$ rspec

Pry will open when you run rspec.
Type quit to complete the tests.


## Using the application

In console run:
$ rspec

The program is set up so that pry opens and the 3 historical records are pre-populated.


#### Commands

account.statement - prints the current statement
account.deposit(10) - Deposits £10
account.withdrawal(5) - Withdraws £5
account.historical.deposit("12/04/2015", 100) - Deposits £100 with the historical date shown
account.historical.withdrawal("12/04/2015", 100) - Withdraws £100 with the historical date shown


You can make deposits and withdrawals and then print the statement to see the updated totals.
There is a private method that stops a withdrawal when the balance is not enough to make the withdrawal.
The statement is formatted so that it aligns nicely. This works for deposits and withdrawals up to £99,999
