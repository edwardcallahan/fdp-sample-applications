#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd -P )"
$DIR/run-dcos-svc.sh kafkastreamssvc.json.template --grafana --influxdb