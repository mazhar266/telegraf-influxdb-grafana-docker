# (Grafana + InfluxDB + Telegraf) / Docker

![Schema](schema.jpg "Schema")

This repository shows how to use a docker to setup a local telegraf, influxdb, 
grafana stack.

You can use this repository to try collect system data, store it in influxdb 
and create graph chart in Grafana.

Thanks to [Han Xiao](https://github.com/justlaputa/collectd-influxdb-grafana-docker) for 
initial work.

# Installation

* Clone this repository and run:

```
$ make up
```

* Then you can open <http://localhost:3000>  grafana web page (login with admin/admin)

# Configuration

* Configuration is stored in `./env` file. There are some sample values in `env.dist` file. Please change them.
