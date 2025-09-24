## TOKEN2049 Admin Frontend

A minimal static frontend (pure HTML/JS/CSS) for admin login, QR code login generation, and user enable/disable management. Can be served via Docker (with built-in Nginx) or a simple Node.js server.

### Features
- **Admin Login**: Obtain admin JWT by sending `POST /v1/campaign/admin/login` to the backend.
- **Generate QR Code Login Link**: Obtain a one-time token via `POST /v1/campaign/auth/qrcode` and display the QR code with countdown.
- **User Management**: List users, enable/disable users.

### Project Structure
- `public/`
  - `login.html`: Admin login page.
  - `menu.html`: Post-login menu (auto-redirects to login if not authenticated).
  - `qrcode.html`: Generate QR login link, countdown, and copy functionality.
  - `manager-users.html`: User list with enable/disable support.
  - `config.json`: Runtime configuration (see `config.example.json`).
- `server.js`: Serves static files via Express (for development).
- `Dockerfile`, `nginx.conf`: Serve static files with Nginx in production.
- `Makefile`: Common Docker command aliases.

### Requirements
- Docker (recommended) or Node.js 18+

### Pre-Run Setup: `public/config.json`
Create or overwrite `public/config.json` according to your environment. Example (see also `config.example.json`):
