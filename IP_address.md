# What is a network?

- A `network` is nothing more than two or more computers connected to each other so that they can exchange information, such as e-mail messages or documents, or share resources, such as disk storage or printers. In most cases, this connection is made via electrical cables that carry the information in the form of electrical signals. But in some cases, other types of connections are used. For example, fiber-optic cables let computers communicate at extremely high speeds by using impulses of light. Wireless networks let computers communicate by using radio signals, so the computers aren’t restricted by physical cables.

## IP address:

### Definition:
- An IP address, or Internet Protocol address, is a unique identifier assigned to each device connected to a network that uses the Internet Protocol for communication. It serves two main purposes:

1. **Identifying Devices**: An IP address identifies a specific device on a network, allowing it to be found and communicated with by other devices. This could be a computer, smartphone, server, or any other device connected to the network.

2. **Locating Devices**: It provides the location of the device in terms of its network and helps route data to the correct destination.

### Types of IP Addresses:

- Public IP Addresses:
- Private IP Addresses:

## What is subnetting?

- A **subnetwork**, or **subnet**, is a logical subdivision of an IP network. It segments a larger network into smaller, more manageable pieces.
- The practice of dividing a network into multiple smaller networks is called **subnetting**.
- Devices within the same subnet share the same **most-significant bit-group** (or **network portion**) of their IP address, which is determined by the subnet mask. This portion is identical for all devices within the same subnet, distinguishing it from other subnets.

### Subnetting steps:

1. Identify the class of the IP address and note the default subnet mask.
2. Convert the default subnet mask into binary.
3. Note the number of hosts required per subnet and find the subnet Generator (SG) and octet position.
4. Generate the new subnet mask.
5. Use the SG and generate the network ranges (subnets) in the appropriate octet position.

### Subnet a network based on the host requirements.

- Example: Subnet the IP address 216.21.5.0 into 30 hosts in each subnet.

1. Class C IP Address - Default Subnet Mask: 255.255.255.0 or /24

2. Default Subnet Mask into binary: 11111111.11111111.11111111.00000000

3. No. of hosts/subnets: 30 (11110) - 5 bits | SG : 32 | Octet Position: 4 => 11111111.11111111.11111111.11100000

4. New Subnet Mask: 11111111.11111111.11111111.11100000 or /27

5. Network Ranges (Subnets):

<center>

| Network Address: | Broadcast Address |
|-|-|
| 216.21.5.32 | 216.21.5.63 |
| 216.21.5.0 | 216.21.5.31 |
| 216.21.5.64 | 216.21.5.127 |
| 216.21.5.128 | 216.21.5.159 |

</center>
