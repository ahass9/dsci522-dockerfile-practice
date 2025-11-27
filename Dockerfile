
FROM quay.io/jupyter/minimal-notebook:afe30f0c9ad8


COPY environment.yml .
COPY conda-linux-aarch64.lock .


RUN conda create --name dsci522-env --file conda-linux-aarch64.lock


ENV CONDA_DEFAULT_ENV=dsci522-env
