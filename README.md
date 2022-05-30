# gFET Biosensor Data Analysis
Given the complexity of the data collected by graphene Field Effect Transistor (gFET) biosensors, it is required to convert it into more intelligible outputs in order to identify a negative/positive response in the shortest amount of time. For this goal, two separate scripts have been created. The first (plot.sh) generates a graphical representation of both acquisitions (blank and sample) as a pair of V-shaped curves known as transfer curves. The second script (analysis.sh) computes the Dirac point values for each channel of the two graphene acquisitions and compares the Dirac point values of the blank to those of the sample using a paired t-test.