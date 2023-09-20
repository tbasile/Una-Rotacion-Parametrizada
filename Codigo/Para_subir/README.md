# Quantum-simulation-of-Pauli-Channels


Quantum simulation of Pauli channels and dynamical maps: algorithm and implementation

This repository has the code and results used for the article "Quantum simulation of Pauli channels and dynamical maps: algorithm and implementation". 

The repository includes the python notebook "Simulation of Pauli Channels.ipynb", which explains the general idea on how to construct a quantum circuit using Qiskit with the objective of simulating Pauli Channels. The quantum circuit is then used to simulate a sample of many one-qubit Pauli channels and obtain the fidelities of these simulations.

The notebook "Parametrized Quantum Channels" is used to simulate curves of Pauli channels using only one parameter as explained in the paper.

Finally, the notebook "Simulation of Pauli channels 2 qubits" produces a simulation of a specific Pauli channel for 2 qubits.

The resulting data is found on the folder "Simulation-ibmq_lima", which includes the fidelities obtained for all the channels simulated.
