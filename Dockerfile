FROM grafana/grafana:5.2.2

RUN grafana-cli --pluginsDir "${GF_PATHS_PLUGINS}" plugins install grafana-worldmap-panel 0.1.2  
RUN grafana-cli --pluginsDir "${GF_PATHS_PLUGINS}" plugins install natel-discrete-panel 0.0.8-pre  
RUN grafana-cli --pluginsDir "${GF_PATHS_PLUGINS}" --pluginUrl https://github.com/f5devcentral/f5-bados-app/archive/nginx.zip plugins install f5-bados-app 
RUN grafana-cli --pluginsDir "${GF_PATHS_PLUGINS}" --pluginUrl https://github.com/akruman/grafana-diagram/archive/1.4.4.f5.zip plugins install f5-jdbranham-diagram-panel 
RUN grafana-cli --pluginsDir "${GF_PATHS_PLUGINS}" --pluginUrl https://github.com/akruman/grafana-datatable-panel/archive/v0.0.6.f5.zip plugins install f5-briangann-datatable-panel

ENTRYPOINT [ "/run.sh" ]
