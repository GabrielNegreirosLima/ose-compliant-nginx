# [WIP] Nginx with Open Standards Everywhere
Nginx docker image and configuration using the ISOC OSE (Internet Society - Open Standards Everywhere) tutorials.

## Why
Protocols and good practices for security in web servers have been around for a pretty good time, but not always the system administrators have the knowledge or the time for studying these protocols and good practices. Aware of that, Internet Society has created the [Open Standards Everywhere](https://www.internetsociety.org/issues/open-standards-everywhere/) that consist of clear written tutorials for implementation in Web servers as Nginx or Apache.

## How to use
The file `default.conf` is the example file with the proper configuration for that site. Here you can change the server listen, address and let the other configurations as it's.

We'll copy the `default.conf` example for the `/etc/nginx/conf.d/default.conf` inside the docker image. For not overwriting the default conf file, **wich is also a good practice**, you can change the filename and the Dockerfile to write other filename, it'll work as well.

### Please just show me the commands

- Ok, for building (assuming your user is in the docker group):
```
docker-compose build
```

- For running:
```
docker-compose -d
```

- Test it accessing `localhost:8089`
