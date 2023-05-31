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

A review of the literature suggests that there is a desire to modernize pre-existing large scale network simulators, but such efforts fall short of @awile2022modernizing

Born from the ashes of a StupidBear SpikingNeuralNetworks.jl.

= Theoretical Framework

Nothing new is presented in terms of theoretical framework.

We use the forward Euler implementations of weight updates, and $ V_{M} $ updates, as the forward Euler method is fast, and sufficiently robust for use on well known homogenuous Leaky Integrate and Fire neurons.


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
