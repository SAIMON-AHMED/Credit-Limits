# Credit-Limits

Ram is super excited about Holi and wants to give Shyam a special gift - a smart contract that lets him buy the most colorful colors for the festival!
Shyam can use this smart contract to buy red, green, and blue colors with an initial balance of 100 credits. However, Ram has set a maximum credit limit for each color so that Shyam does not go overboard. For Red and Blue, Shyam can only spend up to 40 credits each, and for Green, he can spend up to 30 credits. To make sure that Shyam doesn't overspend, the smart contract has two user-friendly functions:

 

Input:
buyColour(string colour, uint price): Shyam can use this function to choose his desired color and the price he wants to pay for it. This function checks if Shyam has enough credits and also ensures that he doesn't exceed the maximum limit set by Ram for each color. The colour should be one of these 3- "red", "blue", "green". If the colour is anything other than these 3 strings, the transaction should fail.

 

Output:
credits() returns (uint n): This function will return the credits that are remaining with Shyam. Since, Shyam has 100 credits at the beginning, the credits will be within constraints 0 to 100, i.e.0 <=n < 100.

 

The problem is to create a smart contract that allows Shyam to buy colors for Holi while ensuring that he stays within the credit limits and doesn't overspend.
