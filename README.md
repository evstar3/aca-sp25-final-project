# aca-sp25-final-project

## Running the Gem5 program

Follow these steps to set up and run the project on your local machine:

1.  **Clone the Repository:**
    ```bash
    git clone https://github.com/evstar3/aca-sp25-final-project
    ```
    This command downloads all the project files to a new folder named `aca-sp25-final-project` on your computer.

2.  **Initialize the `gem5` Submodule:**
    ```bash
    git submodule update --init --recursive
    ```
    This step is crucial for including the `gem5` simulator, which is managed as a submodule within this project. The command fetches the necessary `gem5` files. If you've previously cloned the project and are just setting up the submodule, you might need to first run:
    ```bash
    git config --file .gitmodules submodule.gem5.url https://github.com/evstar3/aca-sp25-gem5.git
    git submodule sync
    ```
    before the `git submodule update` command.

3.  **Navigate to the `gem5` Directory:**
    ```bash
    cd gem5
    ```
    This command changes your current location in the terminal to the `gem5` folder, which is where you'll perform the next steps related to the simulator.

4.  **Switch to the Required `gem5` Branch:**
    ```bash
    git checkout decay-cache
    ```
    This command ensures you are using the specific version of the `gem5` simulator (`decay-cache` branch) that is required for this project.

5.  **Build the `gem5` Simulator:**
    ```bash
    scons build/X86/gem5.opt -j$(nproc)
    ```
    This command compiles the `gem5` simulator optimized for the X86 architecture. The `-j$(nproc)` part tells the system to use all available processor cores to speed up the build process, which can take some time.
