# WALLACE_TREE_MULTIPLIER
4-BIT WALLACE TREE MULTIPLIER 
<br>
Author-Ravi Shankar Tiwari
<br>

1.PROJECT OVERVIEW
<br>
This project implements a 4-bit WAllace Tree Multiplier in Verilog and verifies its functionality using a SystemVerilog testbench.The Wallace Tree multiplier is a fast multiplication technique that reduces partial products in parallel using carry-save adders,making it faster than conventional array multipliers.The design was simulated and verified to ensure the correct operation for all 4-bit input combinations.
<br>

2.MOTIVATION
<br>
Multiplication is a critical operation in the digital systems, particularly in DSP processors, computer ALUs and cryptographic hardware. While simple array multiplier are easy to design, they suffer from longer propogation delays due to sequential addition of the partial products.The wallace tree method minimizes the critical path delay by performing reductions in parallel, resulting in the faster multiplication.This project was undertaken to study the design and verification of such a multiplier for a small 4-bit case.

<br>

3.FEATURES
<br>
a>verilog RTL design of a 4-bit Wallace Tree Multiplier.
<br>
b>Parallel reduction of partial products using carry-save adders.
<br>
c>system verilog testbench for the funvtional verification.
<br>
d>Exhaustive simulation for all possible 4-bit input combinations.
<br>
e>Synthesizable design, suitable for FPGA or ASIC implementation.


<br>

4.METHODOLOGY 
<br>
a>Design the RTL of a 4-bit Wallace Tree Multiplier in verilog.
<br>
b>Generated partial products and reduced them using the Wallace Tree Structure.
<br>
c>Wrote a system verilog testbench to apply input vectors and compare outputs.
<br>
d>Verified correctness of multiplication against expected results.
<br>
e>Analyzed the simulation waveform for correctness and timing.

<br>


5.APPLICATIONS
<br>
a>Digital signal processing systems.
<br>
b>Arithmetic Logic Unit in processors.
<br>
c>Hardware accelerators for machine learning and graphics.
<br>
d>Cryptographic hardware requiring fast multiplication.
<br>
e>FPGA and ASIC design for high-speed arithmetic operations.

<br>


6.RESULTS
<br>
1.Verified that the multiplier produces correct output for all 4-bit input pairs.
<br>
2.Demonstrate reduced propogation delay compared to conventional array multiplication.
<br>
3.Functional verification successful in simulation.
<br>

7.REFERENCES 
<br>
a>Computer Arithmetic and Digital Design literature on Wallace Tree Multipliers.
<br>
b>Verilog/SystemVerilog simulation reports generated during the project.











