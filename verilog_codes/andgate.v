/*
*
    * Things to note / * for multiline comments 
    * // for single line comments
        * module <modulename> (); endmodule - mandatory keywords
    * Additional stuff to try: Change andgate behavior to behavioral and use
    * NAND gates

*/
module andgate(x,y,z);
    input x,y;
    output z;
    assign z=x&y;
endmodule
