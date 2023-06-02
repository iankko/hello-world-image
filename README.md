# An example "Hello World" UBI8 Minimal Based Container Image

This repository contains a definition of a very simple container image,
based on Red Hat Universal Base 8 Minimal image, to be built using
the [CEKit](https://cekit.io/) tool.

The image describes definition & usage of a single CEKit module to
demonstrate it's possible to use CEKit modules to far more advanced
actions like:

* Install additional RPM packages,
* Enable / disable systemd services,
* Or even on the fly create the script to be executed upon container
  image startup like in this case

than just to copy files or directories across paths.

## Howto

1. Install CEKit tool by following the [installation instructions](https://docs.cekit.io/en/latest/handbook/installation/instructions.html),
   specific to the operating system / distribution you use.
2. Ensure the Docker service is running on your local system or start it (as root).
```
# service docker restart
```
3. Build the image using CEKit tool as follows:
```
$ cekit --descriptor image.yaml build docker
```

NOTE: Notice how the image is tagged as 'custom-rh-sso-7-image:7.6.3.GA-1'
      without any extra step needed to be taken / performed.

4. Run the image:
```
$ docker run -it custom-rh-sso-7-image:7.6.3.GA-1
Hello world
```

Feel free to experiment with / change the image to see how it works.
