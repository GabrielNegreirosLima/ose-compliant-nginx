# [WIP] Nginx with Open Standards Everywhere
Nginx docker image and configuration using the ISOC OSE (Internet Society - Open Standards Everywhere) tutorials.

## Important Notes
- This project **DOESN'T INCLUDE** SSL certification purchases or tutorials. We're using self-signed certificates created in the Dockerfile. **This is NOT a good practice**. Please, use Let's Encrypt or other service for get the certificates and change the Dockerfile to configure nginx with your supplied certificates.

## Why
Protocols and good practices for security in web servers have been around for a pretty good time, but not always the system administrators have the knowledge or the time for studying these protocols and good practices. Aware of that, Internet Society has created the [Open Standards Everywhere](https://www.internetsociety.org/issues/open-standards-everywhere/) that consist of clear written tutorials for implementation in Web servers as Nginx or Apache.

## How to use (for testing!)
The file `default.conf` is the example file with the proper configuration for that site. Here you can change the server listen, address and let the other configurations as it's.

We'll copy the `default.conf` example for the `/etc/nginx/conf.d/default.conf` inside the docker image. For not overwriting the default conf file, **wich is also a good practice**, you can change the filename and the Dockerfile to write other filename, it'll work as well.

### Please just show me the commands

- Edit your hosts file (`/etc/hosts`), and add the following line: 
```
127.0.0.1 mynginx.local
127.0.0.1 ipv6.mynginx.local
```

- Ok, for building (assuming your user is in the docker group):
```
docker-compose build
```

- For running:
```
docker-compose -d
```

- Test it accessing `http://mynginx.local` for IPv4
- Test it accessing `http://[::1]` for IPv6

## For production
If you want to use this for production web servers or reverse proxies, here we go with some suggestions:
- Buy or get free certificates and change the Dockerfile
- Always check the `default.conf` file for any improvement you think it deserves.
- Copy the `default.conf` file to another file and use sites-enabled/sites-available nginx feature, it's more clear and kind for the next person that will touch that.
- Always, ALWAYS, check docker image version and search for the latest stable version and pin that version. Here we use latest, but you can't be sure in what's going to change in the next release and, and you don't want to pin a version and stay with it forever. Trust me.

