# Deep Policy Gradient Reinforcement Learning

This repository has the code from my O'Reilly article 'Reinforcement Learning w/ TensorFlow' published on.

This code contains tools for implementing the reinforcement learning algorthing REINFORCE TensorFlow and a convolutional Neural Network

## Required Packages
* [TensorFlow v1.3](http://www.tensorflow.org/)
* [Jupyter](http://jupyter.org/)
* [NumPy](http://www.numpy.org/)
* [Scipy](https://www.scipy.org/)
* [Matplotlib](http://matplotlib.org/)
* [VizDoom](https://github.com/mwydmuch/ViZDoom/blob/master/doc/Building.md)


There are three ways you can install these packages: by using Docker or by using Native Python & Virtualenv.  If you use Docker you will not be able to render the environment.  

### Using Docker

1. Download and install [Docker](https://www.docker.com/).  If using Ubuntu 14.04/16.04 I wrote my own instructions for installing docker [here](https://github.com/wagonhelm/ML-Workstation-Installation-Guide#install-docker).

2. Download and unzip [this entire repo from GitHub](https://github.com/wagonhelm/Visualizing-Convnets), either interactively, or by entering
    ```bash
    git clone https://github.com/wagonhelm/Deep-Policy-Gradient.git
    ```

3. Open your terminal and use `cd` to navigate into the directory of the repo on your machine
    ```bash
    cd Deep-Policy-Gradient
    ```
    
4. To build the Dockerfile, enter
    ```bash
    docker build -t dpg_dockerfile -f dockerfile .
    ```
    If you get a permissions error on running this command, you may need to run it with `sudo`:
    ```bash
    sudo docker build -t dpg_dockerfile -f dockerfile .
    ```

5. Run Docker from the Dockerfile you've just built
    ```bash
    docker run -it -p 8888:8888 -p 6006:6006 dpg_dockerfile bash
    ```
    or
    ```bash
    sudo docker run -it -p 8888:8888 -p 6006:6006 dpg_dockerfile bash
    ```
    if you run into permission problems.

6. Launch Jupyter and Tensorboard both by using tmux 
    ```bash
    tmux
    
    jupyter notebook --allow-root
    ```
    `Press CTL+B` then `C` to open a new tmux window, then
    
    ```
    tensorboard --logdir='/tmp/dpg'
    ```
    To switch windows `Press CTL+B` then `window #` 
 
    Once both jupyter and tensorboard are running, using your browser, navigate to the URLs shown in the terminal output if those don't work  try http://localhost:8888/ for Jupyter Notebook and http://localhost:6006/ for Tensorboard.
    
### Using Native Python 3

Install system requirements

    ```bash
    sudo apt-get install cmake zlib1g-delibjpeg-dev libboost-all-dev libsdl2-dev wget unzip gitboostbuild-essential zlib1g-dev libsdl2-dev libjpeg-dev nasm tar libbz2-dev libgtk2.0-dev cmake libfluidsynth-dev libgme-dev libopenal-dev timidity libwildmidi-dev 
    ```

