* To build Docker image

docker build -t  docker.deveng.systems/qa/argos-browserstack-tunnel --rm --no-cache .

* To run in Docker

replace volume below with output from pwd
replace browserstack creds
replace percy_token

docker run  --rm -P -v /Users/darleyse/projects/wdio-minimal-percy/:/project   -e CUCUMBER_TAGS=@snapshot -e BROWSERSTACK_USER=**** -e BROWSERSTACK_ACCESSKEY=**** -e PERCY_TOKEN=**** docker.deveng.systems/qa/argos-browserstack-tunnel:latest make run-on-demand
 
