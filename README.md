# (Grafana + InfluxDB + CollectD) / Docker

![Schema](schema.jpg "Schema")

This repository shows how to use a docker to setup a local collectd, influxdb, 
grafana stack.

You can use this repository to try collect system data, store it in influxdb 
and create graph chart in Grafana.

Thanks to [Han Xiao](https://github.com/justlaputa/collectd-influxdb-grafana-docker) for 
initial work.

# Installation

* Clone this repository and run:

```
$ docker-compose up -d --build
```

* Then you can open <http://localhost:3000>  grafana web page (login with admin/admin)
