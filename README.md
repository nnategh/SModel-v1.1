# Sparse Variable Generalized Linear Model (SVGLM)

The sparse variable generalized linear model framework, termed the `SVGLM`, which is able to track the saccade-induced rapid changes occurring in the spatiotemporal sensitivity of the neurons on a millisecond timescale. The principal idea of the `SVGLM` is that the stimulus-response relationship in a neuron is characterized by a set of time-varying stimulus kernels, which represent the spatiotemporal receptive field of the neuron as varying along the time dimension. 

> To see the previous version of this model, please click on this [link](https://github.com/nnategh/SFA-Models) [1].

## Functional dependency
To execute the code, run the `main.m` script file. The call hierarchy/tree of main functions is shown in the following figure.

![Call hierarchy](assets/figures/call-tree.svg "Call hierarchy")

The following figure (you can zoom in for more details) shows the dependency network of the implemented functions (except plotting functions) in the project.

![Dependancy network](assets/figures/depex.svg "Dependancy network")

## Data flow
> To see more details about the data flow, please click on this [link](DATAFLOW.md).

[![Data flow](assets/figures/data-flow.svg "Data flow")](DATAFLOW.md)

## References
[1] Niknam, K., Akbarian, A., Clark, K., Zamani, Y., Noudoost, B., & Nategh, N. (2019). Characterizing and dissociating multiple time-varying modulatory computations influencing neuronal activity. PLoS computational biology, 15(9), e1007275. [View Article](https://journals.plos.org/ploscompbiol/article?id=10.1371/journal.pcbi.1007275)

# System Requirements
## Hardware requirement
The code requires only a standard computer with enough RAM to support the in-memory operations.
## Software requirement
The code has been tested on macOS and Linux.
