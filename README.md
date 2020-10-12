# [WIP] Nginx with Open Standards Everywhere
Nginx docker image and configuration using the ISOC OSE (Internet Society - Open Standards Everywhere) tutorials.

## Why
Protocols and good practices for security in web servers have been around for a pretty good time, but not always the system administrators have the knowledge or the time for studying these protocols and good practices. Aware of that, Internet Society has created the [Open Standards Everywhere](https://www.internetsociety.org/issues/open-standards-everywhere/) that consist of clear written tutorials for implementation in Web servers as Nginx or Apache.

## How to use
The file `default.conf` is the example file with the proprer configuration for that site. Here you can change the server listen, address and let the other configurations as it's.

The docker image copy the `default.conf` example for the `default.conf`. You can change that also for not overwritten the default config.

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
