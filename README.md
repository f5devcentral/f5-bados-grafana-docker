# f5-bados-grafana-docker
docker container that includes f5-bados-app with grafana

# building
docker build -t akruman/f5-bados-grafana-docker .

# running
docker run --name=grafana -p 3000:3000 akruman/f5-bados-grafana-docker

# using
- connect to grafana using browser on port 3000, user,password=admin:admin
- enable the f5 plugin
- enable the statistics collection on BIGIP: tmsh modify sys db admdb.debug.traffic.sample value enable
- configure the datasource to connect to BIGIP, as explained in the datasource readme
- see stats from you BIGIP in the dashboards