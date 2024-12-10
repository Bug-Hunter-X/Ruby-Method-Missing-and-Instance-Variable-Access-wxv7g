# Ruby Method Missing and Instance Variable Access

This repository demonstrates a subtle bug related to Ruby's `method_missing` method and accessing instance variables.  The `bug.rb` file shows the issue. The `bugSolution.rb` shows the corrected version.

## Bug Description
The issue arises when using `method_missing` to handle undefined method calls.  While `method_missing` intercepts the calls, it doesn't inherently provide access to the object's internal state (like instance variables).  Attempting to access an instance variable directly can still raise a `NoMethodError`.

## Solution
The solution involves providing proper accessors for instance variables if the intent is to allow external access.  The `bugSolution.rb` demonstrates using an accessor method to safely access the instance variable.