To set up the environment for the docker, follow the steps below:

The code of  SD-ControlNet-TripoSR-main will be provided later

1. **Build the Docker Image using Dockerfile:**
   - Compile the code using the Dockerfile.
   - Move the code into the container.

2. **Manually Configure the Environment:**
   - Run the following commands in the container:
     ```bash
     apt-get install libgl1
     apt-get install libglib2.0-0
     apt-get update && apt-get install -y git
     pip install git+https://github.com/tatsy/torchmcubes.git
     git clone https://github.com/tatsy/torchmcubes.git
     cd torchmcubes/
     python setup.py build_ext -i
     apt-get install build-essential
     pip install git+https://github.com/tatsy/torchmcubes.git
     python setup.py build_ext -i
     ```

3. **Verify the Environment:**
   - After the manual configurations, enter the container and run the following command:
     ```bash
     HF_ENDPOINT=https://hf-mirror.com python gradio_app.py
     ```
   - Verify if the command runs successfully.

4. **Create a Docker Image (sd_commit):**
   - Package the environment configurations into a Docker image named `sd_commit`. Use docker commit

5. **Build 'sd_test' Image using Dockerfile2:**
   - Compile a new Docker image named `sd_test` from the `sd_commit` image using Dockerfile2.
   - Run the following command to build the `sd_test` image:
     ```bash
     docker build -f Dockerfile2 -t sd_test .
     ```

By following these steps, you can set up the environment, verify the configuration, and build the necessary Docker images for the project.