# Quickstart
1. Clone submodules
    - `git submodule update --init --recursive`
1. Build the tests in this repo
    ```
    ./build.sh
    ```

The tests' binaries will be installed in `build/`. The tests whose source code can be found in `bareMetalC/` will be installed in `build/bareMetalC/`, the tests in `mobilenet/` will be in `build/mobilenet/`, and so forth.

To run the tests yourself on a Gemmini ISA simulator, follow these steps:
1. Install [esp-isa-sim](https://github.com/ucb-bar/esp-isa-sim). If you are using [Chipyard](https://github.com/ucb-bar/chipyard), then running `./scripts/build-toolchains.sh esp-tools` from Chipyard's root directory will install it for you. The ISA simulator is called `spike`.
1. Run test programs on `spike`:
    ```bash
    cd build/bareMetalC
    spike --extension=systolic mvin_mvout-baremetal
    ```
