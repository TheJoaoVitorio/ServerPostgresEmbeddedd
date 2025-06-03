# PostgreSQL Embedded Server

This is a Delphi-based application designed to embed and control a PostgreSQL server instance directly within a desktop application. It allows for starting, stopping, and checking the server status programmatically, without requiring the user to manually install or configure PostgreSQL.

![Config Server Screen](assets/ServerPostgreSQLCap1.png)

## 🛠 Features

- ✅ Start PostgreSQL server via `pg_ctl`
- 🔍 Check if the server is running
- 📄 Automatically update `pg_hba.conf` authentication from `md5` or `scram-sha-256` to `trust`
- 📦 Includes all PostgreSQL binaries within the application
- 💡 Designed for embedded/local use in Windows

## 🧰 Technologies Used

- **Delphi (VCL)**
- **Codrut Fluent Design System - VCL Components**
- **PostgreSQL binaries**
- **Windows API** (`CreateProcess`, `ReadPipe`, etc.)
- **FireDAC** (optional, for DB access)

![Server Running Screen](assets/login_screen.png)

