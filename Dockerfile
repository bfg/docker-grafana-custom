#
# custom influxdb docker file
#

FROM        grafana/grafana:3.1.1-1470047149

# install standard plugins
RUN /usr/sbin/grafana-cli --pluginsDir /var/lib/grafana/plugins plugins install fetzerch-sunandmoon-datasource && \
    /usr/sbin/grafana-cli --pluginsDir /var/lib/grafana/plugins plugins install grafana-clock-panel && \
    /usr/sbin/grafana-cli --pluginsDir /var/lib/grafana/plugins plugins install grafana-piechart-panel && \
    /usr/sbin/grafana-cli --pluginsDir /var/lib/grafana/plugins plugins install grafana-simple-json-datasource && \
    /usr/sbin/grafana-cli --pluginsDir /var/lib/grafana/plugins plugins install grafana-worldmap-panel && \
    /usr/sbin/grafana-cli --pluginsDir /var/lib/grafana/plugins plugins install mtanda-histogram-panel && \
    /usr/sbin/grafana-cli --pluginsDir /var/lib/grafana/plugins plugins install stagemonitor-elasticsearch-app
    
# make everything configurable
VOLUME      [ "/etc/grafana", "/var/lib/grafana" ]

# expose the port
# EXPOSE      3000

# start the goddamn grafana
#ENTRYPOINT ["/usr/bin/grafana-server", "-config=/etc/grafana/grafana.ini", "-homepath=/usr/share/grafana/"]
#ENTRYPOINT /bin/bash
#CMD /bin/bash

# vim:shiftwidth=2 softtabstop=2 expandtab
# EOF
