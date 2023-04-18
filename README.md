# Tree-16-to-4-priority-encoder-in-VHDL
SUSTech EE332 Digital System Design 

A priority encoder is a circuit that returns the codes for the highest-priority request. By using a conditional signal assignment or if statements to naturally describe this function, the shape of the specified priority network is a single cascading chain.

## Prelab exercise
Refer to the 4-to-2 priority encoder on Page 81, develop a VHDL code to realize a 16-to-4 priority encoder using a conditional signal assignment. The outputs of the encoder are a 4-bit code and a 1-bit activity flag. Sketch the conceptual implementation of the design. 

![2](https://user-images.githubusercontent.com/117464811/232691896-31505d07-d930-4ded-946a-400381b9f788.png)


To shape the layout of the circuit to a tree form so that to reduce the critical path of the designed 16-to-4 priority encoder. Develop the block diagram of the design.

![3](https://user-images.githubusercontent.com/117464811/232691203-74cc0d51-114b-49bb-a4d8-5e0c2effed70.png)

Based on the block diagram, develop the VHDL code of the design using component instantiation.

Compare the layout and performance of the tree design with that of the cascading design.

## simulation

Do the simulation of the design.

### behavioral

![2_BS](https://user-images.githubusercontent.com/117464811/232691973-a173fcdb-aed3-4006-ad4d-1abef8fb545c.png)

### post synthesis

![2_SS_F](https://user-images.githubusercontent.com/117464811/232692020-2738bdc0-8a0b-4f30-8b9e-29986eff9fb4.png)

![2_SS_T](https://user-images.githubusercontent.com/117464811/232692028-bd68b0b2-cea0-48ae-a68a-f85718d00ca3.png)

### post implementation

![2_IS_F](https://user-images.githubusercontent.com/117464811/232692064-98d7b0fe-d06d-47cd-9ed7-bb270c145170.png)

![2_IS_T](https://user-images.githubusercontent.com/117464811/232692083-1761c7db-a2b2-483b-8a71-9dccf9d685c4.png)
