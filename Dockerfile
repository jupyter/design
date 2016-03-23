# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.

# used by mybinder.org for recreating the survey/2015-notebook-ux
# analysis environment

FROM andrewosh/binder-base

USER main

ENV DASHBOARDS_VERSION 0.4.1
ENV DECL_WIDGETS_VERSION 0.4.2
ENV CMS_VERSION 0.4.0

# get to the latest jupyter release and necessary libraries
RUN conda install -y jupyter seaborn futures
RUN bash -c "source activate python3 && \
        conda uninstall blz dynd-python && \
        conda install ipywidgets=4.1 seaborn=0.7.0 matplotlib=1.5.1 pandas=0.18"

# install dashboard extension
RUN bash -c "source activate python3 && pip install \
    jupyter_dashboards==$DASHBOARDS_VERSION \
    jupyter_declarativewidgets==$DECL_WIDGETS_VERSION \
    jupyter_cms==$CMS_VERSION"
RUN bash -c "source activate python3 && \
    jupyter dashboards install --user --symlink && \
    jupyter declarativewidgets install --user --symlink && \
    jupyter cms install --user --symlink && \
    jupyter dashboards activate && \
    jupyter declarativewidgets activate && \
    jupyter cms activate"
