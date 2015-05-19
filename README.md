# docker-pac

Docker that enables running [Praqmatic-Automated-Changelog](https://github.com/Praqma/Praqmatic-Automated-Changelog) alias PAC out-of-the-box. Please refer to its README.md for PAC help

The docker does not have and  `CMD` nor `ENTRYPOINT` and therefore the total command to `docker run` need to be supplied.

**Host configuration**

The PAC tool uses among others the html2pdf conversion(pdfkit). This tool needs to use the DISPLAY and therefore this change need to be set in the host:

`xhost +local:root`

**Usage example**

There is a usage example described in [PAC repository README file](https://github.com/Praqma/Praqmatic-Automated-Changelog/blob/master/README.md#using-the-praqmadocker-pac-container)

**Generic usage example**:

`docker run -v <your-data-dir>:/data -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY praqma/pac:<version> ruby <PAC-locatio>/pac.rb -s f9a66ca6d2e6 --settings=<your-project>/<your-project-PAC-settings-file>`

* all directory location (except `<your-data-dir>`) must be beneath the `<your-data-dir>` and relative to this
