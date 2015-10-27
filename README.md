# Analyzing-PPIs

<h3><b>Hypothesis</b>: Biological networks are more similar to geometric distribution than the scale-free's?</h3>
We begin the work with the papers made by Pržulj “Modeling Interactome: scale-free or geometric?”. They’re results tend to the second one. How did they do and how are we going to do it? Graphlets frequency counts. We have 72 kinds of graphlets.
So, it’s logical rather than use shortest paths or degree’s distribution, use this kind of measure.
The first thing to do is to get the data from Pržulj. 
Then we’ll generate the random models (100 each).
Calculate the graphlet distribution and, finally, the distance between the real graphelt  distribution and the random ones. The closer the better. 0 would be they are equal.
What is a PPI? “Protein–Protein Interactions Essentials: Key Concepts to Building and Analyzing Interactome Networks”
