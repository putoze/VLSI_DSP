# Ch6 note

## Cut Set retiming procedures

- Cut set
  - A minimum set of edges that partitions a connected SFG into two disconnected parts 

- Rule 1: timing scaling
  - D to $\alpha$ * D, where $\alpha$ is the pipeline period 
  - input and output rates have to be scaled by a factor $\alpha$
  - a slow down process
  - N-slow of DFG

- Rule 2: delay transfer
  - Given a cut set of an SFG
  - Inbound edge v.s outbound edges
  - If advancing kD* time units on all outbound edges
  - => delaying kD' time units on all inbound edges
  - transfer inbound delay to outbound delay, or outbound delay to inbound 
  
- Rule 3: a special case of cutset retiming 

  - two disconnected parts named G1, G2
  - No edges in the cutset from G2 to G1 
  - called feed-forward cutset

## Retiming with node delay transfer

<p align="middle">
  <img src="img_ch6/node_d_transfer.png" width="500" />
</p>