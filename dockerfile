FROM gcr.io/tensorflow/tensorflow:1.2.1-devel-py3
RUN apt-get update && apt-get install -y git-core tmux xvfb
RUN git clone https://github.com/wagonhelm/Visualizing-DeepRL.git /notebooks/drl
WORKDIR "/notebooks"
RUN pip install -r ./drl/requirements.txt
CMD ["/run_jupyter.sh"]
