cls
rd /s /q ".gradle"
rd /s /q "build"
docker run --rm --entrypoint /bin/bash -it -v %cd%:/project sheyenrath/doctoolchain-azure-devops-pipeline:v3.4.1 -c "doctoolchain . generatePdf -PmainConfigFile=config/docToolchainConfig.groovy --warning-mode=none --no-daemon && exit"