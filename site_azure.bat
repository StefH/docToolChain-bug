cls
rd /s /q ".gradle"
rd /s /q "build"
docker run --rm --entrypoint /bin/bash -it -v %cd%:/project docker.io/doctoolchain/doctoolchain-azure-devops-pipeline:v3.4.1 -c "doctoolchain . generateSite -PmainConfigFile=config/docToolchainConfig.groovy --warning-mode=none --no-daemon && exit"