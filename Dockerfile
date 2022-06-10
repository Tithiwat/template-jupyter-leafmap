FROM condaforge/mambaforge:4.12.0-2
RUN apt update
RUN mamba install -y -c conda-forge jupyterhub
RUN mamba install -y leafmap xarray_leaflet -c conda-forge
