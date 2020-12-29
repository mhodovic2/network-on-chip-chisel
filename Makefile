SBT = sbt

# Generate Verilog code
hdl:
	$(SBT) "runMain noc"
