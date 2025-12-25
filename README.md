## The Illuminati Quiz – Official Website

This repository contains the official website for **The Illuminati Quiz (TIQ)**, an inter-collegiate quiz competition organised by Govt. Model Engineering College, Kochi.

The website is built using **SvelteKit** and styled with **Tailwind CSS**. It is production-ready and supports both traditional Node hosting and Docker-based deployment.

---

## Tech Stack

* **Framework:** SvelteKit
* **Styling:** Tailwind CSS
* **Runtime:** Node.js
* **Deployment:** Vercel / Docker

---

## Local Development

### Prerequisites

* Node.js (v18+ recommended)
* npm

### Steps

```bash
npm install
npm run dev
```

The site will be available at:
👉 `http://localhost:5173`

---

## Production Build (Node)

```bash
npm run build
npm run preview
```

Preview runs the production build locally.

---

## Running with Docker (Recommended for Hosting)

### Prerequisites

* Docker & Docker Desktop installed and running

### Build the image

```bash
docker build -t tiq-web .
```

### Run the container

```bash
docker run -d -p 3000:3000 tiq-web
```

The website will be available at:
👉 `http://localhost:3000`

---

## Notes for Deployment

* Docker images **do not auto-update** when the repository changes.
* To apply updates:

  1. Pull the latest code
  2. Rebuild the Docker image
  3. Restart the container

This behavior is intentional and standard for Docker-based deployments.

---

## License

This project is maintained for official use by The Illuminati Quiz team.

---

