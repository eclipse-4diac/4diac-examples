# Reference Examples 

In this folder, we collect projects that demonstrate features of the standard IEC 61499 together with a description. The examples should support comparing run-times.

## Covered topics
- simple language features of IEC 61499
- examples helping to evaluate the execution order
- examples demonstrating hierarchical groupings in IEC 61499

## Contents
Each example is commented with expected behavior in response to a certain trigger event. This folder contains a project that can be opened with [4diac IDE 3.0](https://eclipse.dev/4diac/download/). The examples are structured into several Applications, each discussing certain subtopics.

An example is shown here:

<img width="600" height="267" alt="image" src="https://github.com/user-attachments/assets/239fd5f5-9639-4bea-b93f-df9470cb2dc2" />

The example assumes that the input CU of Fb1 is triggered. In response, 4diac FORTE processes the network and eventually produces an output event at the pin CNF of Fb3. The data value of the integer pin OUT has to be 1 after the execution.

## Contributing
We are looking for
- improved documentation of the available examples
- experience reports in applying the examples
- additional feature demos 
- larger benchmarks

## Using the examples
see repository root

