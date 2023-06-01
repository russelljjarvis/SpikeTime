#import "template.typ": *
#show: ieee.with(
  title: "SpikeTime Spiking Neuronal Network Simulation in Julia Language",
  abstract: [
  ],
  authors: (
    (name: "Tentative All of the SpikingNeuralNetwork code authors", affiliation: "Tentative All of the SpikingNeuralNetwork code authors affiliations"),
    (name: "Dr Russell Jarvis", affiliation: "nternational Centre for Neuromorphic Systems, MARCS Institute, Western Sydney University"),
    (name: "Yeshwanth Bethi", affiliation: "nternational Centre for Neuromorphic Systems, MARCS Institute, Western Sydney University"),
    (name: "Pablo de Abreu Urbizagastegui", affiliation: "International Centre for Neuromorphic Systems, MARCS Institute, Western Sydney University")

  ),
  index-terms: ("A", "B", "C", "D"),
  bibliography-file: "refs.bib",
)

= Introduction

While there is much focus on hardware advances that accellerate the simulation of large scale spiking neural networks, it is worthwhile to shift our attention to language advances that may also support accelerated large scale spiking neural network simulation. Some gains in biologically faithful neuronal network simulation can be achieved by applying recent computer language features. For example, the Julia language supports Sparse Compressed Arrays, Static Arrays, furthermore Julia provides very extensive support for CUDA GPU, as well as a plethora of reduced precision types. Julia also provides a high-level syntax that facilitates high code reuse while simplifying plotting and data analysis. These features lend themselves towards high-performance large-scale Spiking Neural Network simulation. Therefore, we are using Julia to develop an open-source software package that enables the simulation of networks with millions to billions of synapses on a computer with a minimum of $64$GB of memory and an NVIDIA GPU.

Another major advantage implementing SNN simulations in the Julia language is reduced technical debt. The simulation code we are developing is both faster and less complicated to read compared with some other simulation frameworks. The simplicity of the code base encompasses a simple installation process. Ease of installation is an important part of neuronal simulators that is often overlooked when evaluating simulation merit, GPU simulation environments are notoriously difficult to install and this big technical burden of installation harms model portability and reproducibility. The Julia language facilitates the ease of installation to solve the “two language problem” of scientific computing. The simulator encompasses a singular language environment, which includes a reliable, versatile, and monolithic package manager. Furthermore the simulator installation includes no external language compilation tools or steps.

// In neuromorphic engineering literature, you can often find tables
To demonstrate the veracity and performance of this new simulation approach, we compare the the Potjans and Diesmann model as implemented in the NEST and GENN simulators. In a pending analysis, we compare simulation execution speeds and spike train raster plots to NEST and GENN using the discussed models as benchmarks. 

A review of the literature suggests that there is a desire to modernize pre-existing large scale network simulators, but such efforts fall short of re-writing existing simulator code in the Julia language. @awile2022modernizing

The discussed code repository takes its inspiration from a stale code base: StupidBear SpikingNeuralNetworks.jl


=== Intended Motivation/Intro.
In order to garner evidence for the "replay as network attractor" theory of memory encoding and memory recall
faster scalable methods are needed to transform spike raster plots into attractor trajectories and energy landscapes. 

A problem with converting spike train raster plots to attractor trajectories, is the oldest and most established system for
deriving attractor trajectories (and energy landscapes) needs to the system under investigation to be encoded as a continuous differentiable function.
A dominant approach which satisfys the continuous function requirement is to fit a differential equation that models a networks firing rate(s) in response to current injection
the assumption underlying this approach, is that the rate coded information and network states are more important than or even exclude temporal codes.    

Another approach to estimating attractor trajectories involves applying Delay Coordinate Embeddings framework. The advantage of this approach is that
a model equation is not required, and a timeseries of system observations satisfies the algorithms requirements.
Spikes time raster plots are sparsely encoded collections of events that are naturally encoded by ragged arrays, and delay coordinate embeddings requires a state space map.
Vector matrices that are output from spike2vec are sufficient to satisfy Delay Coordinate Embeddings, however, the frame work is slow to evaluate, and the quality of the output of the algorithm dependent on many parameters (both in parameters of spike2vec and DCE).

Yet another approach is to use Recurrence Analysis. Recurrence Analysis is orders of magnitude faster than DCE, and the results of DCE
usefully describe the network properties of state transition matrices. 

It is the authors view, that the fast algorithm described above is functionally similar to the RecurrenceAnalysis approach, and that it leads to a faster and more 
interprebable network transition matrices.


=== Intended caption for spike2vec document.

*The output of the framework is a sequential state transition network of the spike train. Spontaneous network activity which didn't get repeated was simply not included in the state transition diagram.*
*Two state transition diagrams are output, one with non repeating states, and one with repeating states."

=== Intended Discusssion

The attractor network view of the mammal cortex is consistant with phenomological observations about the mind, such that people commonly refer to "circular thinking", in obsessive compulsive disorder.
Furthermore action and perception are theorized to occur in alternating cycles, during "action-perception" loops. 

Neuronal synaptic weight changes, that happen as a result of STDP, simply bias the brain in a manner which will make salient brain states more likely to occur.

It is possible that the windows which were disregarded because they didn't repeat, may well repeat given long enough neuronal recordings. This is an unavoidable problem, caused by fact that of limited or finite observations are novel network states, or repeating states.
It is also possible that detected reoccuring states, are really only reoccuring state transitions.
From our perspective we are unable to distinguish between a state and a network state transition.

Whatever the case, state, or state transition, detecting periods of repeating patterns in a fast and scalable way, still bolsters the attractor network view of the brain.
The algorithm may also be helpful for feature reconstruction in Neuromorphic Data sets from event based cameras.

Reoccurance analysis was used to characterize vector encoded spike train matrices for repeating patterns.
Re-currence analysis was able to give us numbers quantify the degree of repitition of states, and the entropy of state transition matrices.

Steps convert the spike encoded vector matrices to "state space sets" as defined in the Julia Package Dynamical Systems.jl


Re-occurance analysis did 

#TODO quantify the complexity of state transition matrices with the non reoccuring states included, as this may give us insight about, information in the brain at a different time scale.

 state transition networks

Delay Embeddings can 

//dynamic systems view of the brain @scholarpedia attractor_network.

 caused by the network transitioning to familiar states, 
Of course given longer recordings.
*

= Theoretical Framework

Nothing new is presented in terms of theoretical framework.

We use the forward Euler implementations of synaptic current weight updates, and $ V_M $ updates, as the forward Euler method is fast, and sufficiently robust for use on well known homogenuous Leaky Integrate and Fire neurons.


= Methodological Framework

Weight update rules

= Result Analysis


#align(center + bottom)[
  #image("Graph_embedding.png", width: 70%)
  *SGtSNEpi visualization of the Potjans static connectome. Graph partitioning of the connectome adjacency matrix can be used to compile network models in a way that minimises spike traffic between GPU thread locks. Although the SGtSNEpi dimensionalityt reduction technique provides a nice over view of network structure at scale, it is not as fast or useful as other techniques that distribute the network based on effective connectivity measures. different technique we developed which is called Spike2Vec.*
]

Validation of Network Simulation Results


= Recommendations and Conclusions

// Take a look at the file `template.typ` in the file panel
// to customize this template and discover how it works.

// We generated the example code below so you can see how
// your document will look. Go ahead and replace it with
// your own content!



=== Contributions

=== Bibliography
//#bibliography("bibliography.bib")
//https://www.frontiersin.org/articles/10.3389/fninf.2022.884046/full


//Modernizing the NEURON Simulator for Sustainability, Portability, and Performance
// Omar Awile1†, Pramod Kumbhar1†, Nicolas Cornu1, Salvador Dura-Bernal2,3, James Gonzalo King1, Olli Lupton1, Ioannis Magkanaris1, Robert A. McDougal4,5,6, Adam J. H. Newton2,4, Fernando Pereira1, Alexandru Săvulescu1, Nicholas T. Carnevale7‡, William W. Lytton3‡, Michael L. Hines7‡ and Felix Schürmann1*‡

//B. Illing, W. Gerstner & J. Brea, Biologically plausible deep learning - but how far can we go with shallow networks?, Neural Networks 118 (2019) 90-101

//The cell-type specific cortical microcircuit: relating structure and activity in a full-scale spiking network model
//Tobias C Potjans  1 , Markus Diesmann Cereb Cortex 2014 Mar


//doi: 10.1093/cercor/bhs358. Epub 2012 Dec 2.
//;24(3):785-806.
// https://pubmed.ncbi.nlm.nih.gov/23203991/

//= Appedix or notes to self:
//Similar Simulators With Different Goals
//https://github.com/FabulousFabs/Spike.jl (looking very inspired by Brian2 except in Julia, nice use of code generation)
//https://github.com/SpikingNetwork/TrainSpikingNet.jl (nice use of CUDA and reduced precision types)
//https://github.com/leaflabs/WaspNet.jl (nice use of block arrays)
//https://github.com/darsnack/SpikingNN.jl (nice use of multidispatch abstract types and type restriction)
//https://github.com/wsphillips/Conductor.jl (nice use of DiffEq.jl and code generation)
//https://github.com/FabulousFabs/AdEx (interesting and different)
//https://github.com/ominux/pub-illing2019-nnetworks (research orientated code)
