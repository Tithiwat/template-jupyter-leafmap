FROM condaforge/mambaforge:4.12.0-2
RUN apt update
RUN mamba install -y -c conda-forge jupyterhub
RUN mamba install -y -c conda-forge \
    cartopy \
    datapane \
    flask>=2.0.0 \
    flask-caching \
    gdal \
    geemap>=0.11.1 \
    geopandas \
    imageio \
    ipyvtklink \
    keplergl \
    laspy \
    leafmap>=0.7.4 \
    localtileserver>=0.4.0 \
    osmnx \
    pip \
    pydeck \
    pyntcloud \
    python>=3.8 \
    pyvista \
    requests \
    rio-cogeo \
    tifffile \
    xarray_leaflet