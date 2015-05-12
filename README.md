# docker-pac

Docker that enables running [Praqmatic-Automated-Changelog](https://github.com/Praqma/Praqmatic-Automated-Changelog) alias PAC out-of-the-box. Please refer to its README.md for PAC help

The docker does not have and  `CMD` nor `ENTRYPOINT` and therefore the total command to `docker run` need to be supplied.

The PAC tool uses among others the html2pdf conversion(pdfkit). This tool needs to use the DISPLAY and therefore this change need to be set in the host:

`xhost +local:root`

Example of `docker run`:
`docker run -v $(pwd):/data -v /tmp/.X11-unix:/tmp/.X11-unix:ro -e DISPLAY=$DISPLAY pac-0.1 ruby Praqmatic-Automated-Changelog/pac.rb -s a75e128 --settings=pac_settings.yml`


