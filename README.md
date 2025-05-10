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
    git config --file .gitmodules submodule.phoronix-test-suite.url https://github.com/phoronix-test-suite/phoronix-test-suite.git
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
    The files modified in this branch are:
- `src/mem/cache/decay_cache.hh`: decay cache header file
- `src/mem/cache/decay_cache.cc`: gem5 decay cache implementation
- `src/mem/cache/DecayCache.py`: decay cache Python interface
- `configs/decay_cache/*`: testing configurations

5.  **System Packages**

    Gem5 requires the following system packages in order to run:
    ```
    build-essential cmake doxygen git libboost-all-dev libcapstone-dev libelf-dev libgoogle-perftools-dev libhdf5-serial-dev libpng-dev libprotobuf-dev libprotoc-dev m4 mypy pkg-config pre-commit protobuf-compiler python3-dev python3-pydot python3-tk python3-venv scons wget zlib1g zlib1g-dev
    ```
    They should be available for most Linux distros. However, if you would like to use the included Dockerfile to manage the packages, please refer to the [Docker section](https://github.com/evstar3/aca-sp25-final-project?tab=readme-ov-file#setting-up-the-dockerfile) on how to set it up. 


6. **Build the `gem5` Simulator:**
     ```bash
    scons build/X86/gem5.opt -j$(nproc)
    ```
    This command compiles the `gem5` simulator optimized for the X86 architecture. The `-j$(nproc)` part tells the system to use all available processor cores to speed up the build process, which can take some time.


## Setting up the Dockerfile

Ensure you have Docker installed on your system before proceeding.

1.  **Install Docker (if not already installed):**
    
    Refer to [this website](https://docs.docker.com/get-started/get-docker/) for installing Docker on your machine.

2.  **Enable and Start the Docker Service:**
    ```bash
    sudo systemctl enable --now docker
    ```
    This command enables the Docker service to start automatically on boot and immediately starts the service in your current session.

3.  **Add Your User to the Docker Group:**
    ```bash
    sudo usermod -aG docker $USER
    ```
    This command adds your current user to the `docker` group, allowing you to run Docker commands without using `sudo`. After running this command, you will likely need to log out and log back in for the changes to take effect.

4.  **Build the Docker Image:**
    ```bash
    docker build --tag my-ubuntu-env .
    ```
    This command builds a Docker image using the Dockerfile in the current directory (`.`). The `--tag my-ubuntu-env` option assigns the name `my-ubuntu-env` to this image, making it easier to refer to later.

5.  **Run a Docker Container:**
    ```bash
    docker run -it -v "$PWD":/project my-ubuntu-env
    ```
    This command runs a new Docker container based on the `my-ubuntu-env` image you just built.
    * `-it`: Allocates a pseudo-TTY connected to the container's stdin, creating an interactive bash shell within the container.
    * `-v "$PWD":/project`: Mounts your current working directory (`$PWD`) on your local machine to the `/project` directory inside the Docker container. This allows you to access and modify your project files from within the container.

6.  **Commit Changes to a New Docker Image (Optional):**
    ```bash
    docker commit my-dev-env my-ubuntu-env:snapshot1
    ```
    This command takes a container named `my-dev-env` (it's important to note that this assumes you have a running container named `my-dev-env` with changes you want to save) and creates a new Docker image named `my-ubuntu-env:snapshot1`. This is useful for saving the state of your development environment within the container.
