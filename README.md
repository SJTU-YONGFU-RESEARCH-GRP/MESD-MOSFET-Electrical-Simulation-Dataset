# MESD MOSFET Electrical Simulation Dataset (MESD)

This paper introduces the Metal-Oxide-Semiconductor Field Effect Transistor (MOSFET) Electrical Simulation Dataset, MESD, an extensive collection of I-V and C-V characteristics data simulated across different foundries' Berkeley Short-channel IGFET Models (BSIMs). The MESD dataset covers a range of bias voltages, temperatures, and MOSFET physical dimensions across several technology nodes from 3 to 350 nm. MESD is designed to serve as a standardized benchmark for evaluating and comparing MOSFET models, aiding semiconductor researchers and model developers in assessing the accuracy of their simulations against a robust set of controlled data.

To get more details of the dataset, please refer to the paper: Y. Zhang, K.-L. Low, L. Li, L. Shao, Y. Sun, J. Zhao, Y. Sun, Y. Shi, and Y. Li, Descriptor: MOSFET Electrical Simulation Dataset (MESD), IEEE Data Descriptions.

## Data File Naming Convention

The dataset is in `MESD` folder. The data is recorded with JSON files. Each JSON file corresponds to a device in a PDK. The files are named as `PDK Name`-`Device Name`. MESD includes data from 11 PDKs and 44 types of devices from 350 nm to 3 nm. The PDKs and devices are renamed to avoid leakage of foundry information. 

| Technology | PDK Name | # of Devices (NMOS) | # of Devices (PMOS) |
|------------|----------|-------------------------|--------------------------|
| 3 nm       | N3A      | 1                       | 1                        |
| 7 nm       | N7A      | 3                       | 3                        |
| 15 nm      | N15A     | 1                       | 1                        |
| 40 nm      | N40A     | 3                       | 3                        |
| 45 nm      | N45A     | 1                       | 1                        |
| 45 nm      | N45B     | 3                       | 3                        |
| 55 nm      | N55A     | 3                       | 3                        |
| 90 nm      | N90A     | 3                       | 3                        |
| 180 nm     | N180A    | 1                       | 1                        |
| 180 nm     | N180B    | 2                       | 2                        |
| 350 nm     | N350A    | 1                       | 1                        |

## Data Structure

Each file includes metadata such as PDK name, device name, simulator, and model. The `Record` section is a list, in which each entry includes the `Vgs` and the corresponding `Ids` and `Cgg` under different dimensions (i.e., `W`, `L`, and `Nfin`), simulation conditions (i.e., `Temp` and `Corner`), and voltage bias (`Vds`).

| Name       | Description                                | Type             |
|------------|--------------------------------------------|------------------|
| PDK        | Name of Process Design Kit                 | String           |
| Node       | Technology node in nanometers              | Integer          |
| Device     | Name of MOSFET device                      | String           |
| Type       | Type of MOSFET (NMOS/PMOS)                 | String           |
| Simulator  | Simulator adopted to collect data          | String           |
| Model      | Name of compact model to collect data      | String           |
| Corner     | Process corner                             | String           |
| Temp       | The temperature in degrees Celsius         | Integer          |
| W          | Width of the MOSFET in nanometers          | Integer          |
| L          | Length of the MOSFET in nanometers         | Integer          |
| Nfin       | Number of fins (for FinFET only)           | Integer          |
| Vds        | Drain-source voltage in volts              | Float            |
| Vgs        | Gate-source voltage in volts               | List of float    |
| Ids        | Drain current measured in amperes          | List of float    |
| Cgg        | Gate capacitance in farads                 | List of float    |


## Data Simulation Script

The `scripts` folder provides examples for the simulation of MOSFET devices. `netlist.dc.spectre` and `netlist.ac.spectre` show the simulation script for `Ids` and `Cgg` collection using Cadence Spectre. Similarly, `netlist.dc.sp` and `netlist.ac.sp` are simulation scripts using Synopsys HSPICE.

## License

This repository is licensed under the terms of the Creative Commons Attribution 4.0 International License.