#set page(columns: 2, numbering: "1 of 1" )
#place(
  top + center,
  scope: "parent",
  float: true,
  text(1.4em, weight: "bold")[
   Assignment 3
  ],
)

#place(
  top + center,
  scope: "parent",
  float: true,
  text(1.0em)[
    Tim Price - CSCI 4532
  ],
)
== Verilog Trojan Detection

=== Methods of Detection
The general idea used for detecting these trojans was searching for inputs that would return unexpected outputs. For the simpler trojans, if you can test all input combinations, any unusual output should reveal itself. 

For the three more complex trojans an additional state was required to trigger the trojan behavior. These _stateful trojans_ additional activation state was a repeated input. If the inputs to the circuit were reassigned following an initial assignment of the same input, that particular state would be met. It was typical then to have an additional range of inputs that would be effected when this state was activated, making it an extremely rare activation state. For the remainder of this writeup, these will be refered to as _stateful trojans_ and the activation state will be called _input repetition_.

```
/* input repetition example */
/* some code */ 

initial begin

/* some code */ 

  for (i = 0; i < 16; i++) begin
    in = i;
    @(posedge clk);
    in = i;
    @(posedge clk);
  end

end

/* some code */
```

For the multiplier trojans there are $65536$ products that can be made from multiplying two 64-bit numbers, so adding more logic to the general testbench helps detect anomalies.

```
/* some code */ 

integer product;

initial begin

    product = i * y;
    if (product != prod) begin
      $display("...");
    end
end

/* some code */
```

=== Methods for mitigation

I allude to wrapping modules with additional logic to modify the behavior of the verilog circuits when given a undesirable state that needs to be avoided as a method of mitigation.

=== Decoder Trojan [I.]
This trojan is triggered when $"input" = 1011$ or $11$. This returns a decoded line of just zero ex. $0000000000000000$, where it should be a $0000010000000000$ where the only flipped bit should be the 11#super[th] position. For mitigation a verilog module wrapper could replace the value outputted when input equals $11$. 

=== Decoder Trojan [II.]
This trojan is triggered when \ ${"input" in ZZ | 1 <= "input" <= 15}$. When triggered it flips all the bits in the decoded value ex. $"input"=0001$, $"out" = 1111111111111101$ and this is repeated for the whole trigger range. For mitigation, a wrapper module could "\~" or invert the output to force all the bits to within the affected range to flip.

=== Decoder Trojan [III.]
This trojan is triggered when 

=== Multiplier Trojan [I.]
This trojan is always triggered. It always returns a product of zero. For mitigating this, make a new multiplier or seek out the trojan, it looks like it is related to the multiple lines of wires getting assigned to zero in the circuit.
```
assign _xxx_ = 1'h0;
```

=== Multiplier Trojan [II.]
This trojan is only triggered when $a = 6$ and $b = 7$. This returns the incorrect product of $65487$. For mitigating this design without changing the original verilog circuit, an additional verilog module wrapping the trojan design could build logic that pauses when $a = 6$ and $b = 7$ and returns $42$ instead of the original circuits product. 

=== Multiplier Trojan [III.]
_stateful trojan_.
This trojan is only detectable when inputs are repeated, and it is triggered/activated when $a = 12$ and \ ${b in ZZ | 0 <= b <= 255}$. In the effected range, the product is replaced with $b$ rather than the resulting product from $a * b$. For mitigating this behavior, wrapping the multiplier module with more logic that effectively refreshes a and b should prevent the trigger.

== Trojan Creation

The trojan I introduced will affect the _circuit_. It is a _type_ of trojan and the expected trigger condition will _be_ .
== References

my testbench code - #link(" https://github.com/timmprice/trojan_tb ")

