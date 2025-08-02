# U L T I M A T E

SA-MP (San Andreas Multiplayer) gamemode designed for advanced roleplay, fun, and community engagement. Developed by the Scripter Team: Mumitza, Sačo, and Ghetoven, ULTIMATE offers a robust set of features, stability, and extensibility for server owners and players alike.

## About

ULTIMATE is a custom gamemode for SA-MP, focusing on advanced roleplay, dynamic systems, and ease of management. It leverages MySQL for persistent data, supports a wide range of plugins, and is designed for both new and experienced server administrators.

## Features

-   Advanced admin and user management systems
-   Custom jobs, factions, houses, businesses, and events
-   MySQL database integration for persistent data
-   Anti-cheat and crash detection (crashdetect, nex-ac, etc.)
-   Dynamic mapping and location management
-   Dialog-based user interfaces
-   Extensive use of popular plugins (streamer, sscanf, mysql, etc.)

## Table of Contents

-   [Installation](#installation)
-   [Configuration](#configuration)
-   [Usage](#usage)
-   [Admin Account Access](#admin-account-access)
-   [Credits](#credits)
-   [Screenshots](#screenshots)
-   [Support](#support)
-   [License](#license)

## Installation

1. **Clone or Download** this repository to your local machine.
2. **Dependencies**:
    - Download and extract the official SA-MP server package for Windows.
    - Copy all required plugins into the `plugins/` directory (e.g., `mysql`, `sscanf`, `streamer`, `crashdetect`, `pawncmd`, `pawnraknet`, `pawnregex`, `SKY`, `timerfix`).
    - Ensure all necessary include files are present in `pawno/include/` (see the `include/` and `pawno/include/` folders for a full list).
3. **Database Setup**:
    - Create a new MySQL database for the server.
    - Import the schema from `gamemodes/u_db.sql` into your MySQL database.
    - Update your MySQL credentials in `server.cfg` or the relevant section of the script.
4. **Compile the Gamemode**:
    - Open `gamemodes/ultimate.pwn` with Pawno or your preferred Pawn IDE/editor.
    - Compile the script to generate `ultimate.amx`. Ensure there are no errors and all includes are found.
5. **Server Configuration**:
    - Edit `server.cfg` to set the correct gamemode (e.g., `gamemode0 ultimate 1`), plugins, RCON password, and other settings.
    - Place any required files in `scriptfiles/` (e.g., `MultiAccs/`, `MultiIPs/`).
6. **Start the Server**:
    - Run `samp-server.exe` to start your SA-MP server.

## Configuration

-   `server.cfg`: Main server configuration (gamemode, plugins, RCON password, MySQL credentials, etc.)
-   `gamemodes/u_db.sql`: MySQL database schema. Import this before first run.
-   `scriptfiles/`: Stores dynamic data such as player accounts, IPs, and other runtime files. Subfolders like `MultiAccs/` and `MultiIPs/` are used for account/IP management.
-   `plugins/`: All required server plugins (.dll/.so files).
-   `pawno/include/`: All Pawn include files required for compilation.

## Usage

1. Start the server using `samp-server.exe`.
2. Connect to your server using the SA-MP client (add your server IP and port).
3. Register a new account in-game or use the provided admin account for initial access.
4. Use in-game commands and dialogs to manage the server, create jobs, factions, houses, and more.
5. Monitor server logs (`server_log.txt`, `mysql_log.txt`, `crashinfo.txt`) for errors or issues.

## Admin Account Access

For first-time setup or testing, use the following admin account:

```
Username: Saco
Password: test123
Admin Code: 1
```

## Credits

-   **Scripter Team**: Mumitza, Sačo, Ghetoven
-   **Special Thanks**: Momenzi, White
-   **Ultimate Portal**: [Momenzi/UltimateRPG](https://github.com/Momenzi/UltimateRPG)

## Screenshots

For images and examples of the gamemode in action, see: [Imgur Album](https://imgur.com/a/NA2ohfN)

## Support

Support is not included. Use at your own risk. For community help, consider searching SA-MP forums or related Discord servers.

## License

This project is free to use for any purpose. Attribution is appreciated but not required.
