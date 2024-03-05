FROM jupyter/datascience-notebook

RUN python --version

# RUN conda install --quiet --yes -c \
#     conda-forge osmnx dask

RUN pip install -U pandas sqlalchemy ipython-sql psycopg2-binary

VOLUME /notebooks
WORKDIR /notebooks