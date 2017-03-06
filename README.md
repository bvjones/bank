<h2>Bank tech test example</h2>
by Ben Vaughan-Jones

<h4>User Stories</h4>
```
- As a customer, I would like to deposit money into my account, so I can store my money
- As a customer, I would like to withdraw from my account, so I can take out money
- As a customer, I would like to see my statement, so I can see how much money is in my account```

<h4>Requirements</h4>
```
Requirements

You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).
```

<h4>Acceptance Criteria</h4>
Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see
```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```
