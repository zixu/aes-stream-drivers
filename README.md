This is only a temporary solution for monitoring the software Buff of aes driver. In order for YARR SW can monitor the software buff size, need to check /proc/axiXXXXX file frequently. So, just reduce and re-organize the information of /proc/axiXXXX file

# aes-stream-drivers

Common repository for streaming kernel drivers (PGP, AxiStream, ExoTem)

<!--- ########################################################################################### -->

#### common/

Contains shared kernel and application libraries

#### data_dev/

Contains driver and application code for TID-AIR generic DAQ PCIe cards

/etc/modprobe.d/datadev.conf

options datadev cfgTxCount=1024 cfgRxCount=1024 cfgSize=131072 cfgMode=1 cfgCont=1

#### data_gpu/

Contains driver and application code for TID-AIR generic DAQ PCIe cards with DirectGPU Async Support

/etc/modprobe.d/datagpu.conf

options datagpu cfgTxCount=1024 cfgRxCount=1024 cfgSize=131072 cfgMode=1 cfgCont=1

#### exo_tem/

Contains driver and application code for EXO TEM.

#### include/

Contains top level application include files for all drivers

#### pgpcard/

Contains driver and application code for the pgpcard

#### rce_hp_buffers/

Contains driver that allocates memory blocks for use in a pure firmware dma engine

#### rce_stream/

Contains driver and application code for the RCE AXI stream DMA

<!--- ########################################################################################### -->

# How to build the non-RCE drivers

```
# Go to the base directory
$ cd aes-stream-drivers

# Build the drivers
$ make driver

# Build the applications
$ make app
```

<!--- ########################################################################################### -->

# How to build the RCE drivers

```
# Go to the base directory
$ cd aes-stream-drivers

# Source the setup script (required for cross-compiling)
$ source /afs/slac.stanford.edu/g/reseng/xilinx/vivado_2016.4/Vivado/2016.4/settings64.sh

# Build the drivers
$ make rce
```

<!--- ########################################################################################### -->
