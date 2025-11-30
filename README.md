# MySQL Playground

This project provides a MySQL server running in Docker, automatically seeded with database dump files from the `./mysql` folder.

## Features

- MySQL server (version 9.5.0)
- Automatic database seeding from SQL files in `./mysql` (top-level only)
- Persistent data storage using Docker volumes
- Easy reset of database state by removing the Docker volume

## Running the demo

```sh
docker compose up -d --build
```

- The first startup will seed the database using your SQL files.
- The MySQL server will be available on port 3307 (host) mapped to 3306 (container).

### Connecting to MySQL

- **Host:** `localhost`
- **Port:** `3307`
- **Username:** `root`
- **Password:** `123456`

You can use any MySQL client (e.g., MySQL Workbench, DataGrip, DBeaver, VS Code extensions) to connect.

### Resetting the Database

If you want to reseed the database (e.g., after changing SQL files):

1. Stop and remove the containers and volume:
   ```sh
   docker compose down -v
   ```
2. Start the server again:
   ```sh
   docker compose up -d --build
   ```

## Notes

- Seeding only happens when the volume is created for the first time. Subsequent restarts will not reseed unless you delete the volume.
