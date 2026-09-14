const http = require("http");
const fs = require("fs");
const path = require("path");
const crypto = require("crypto");

const PORT = Number(process.env.PORT || 3000);
const PUBLIC_DIR = path.join(__dirname, "public");

const users = [
  { id: 1, name: "Avery Admin", email: "admin@example.test", password: "demo123", role: "admin" },
  { id: 2, name: "Sam Student", email: "student@example.test", password: "demo123", role: "student" }
];

const students = [
  { id: "S-1001", name: "Jamie Cruz", program: "BSCS", year: 4 },
  { id: "S-1002", name: "Morgan Reyes", program: "BSIT", year: 3 }
];

const sessions = new Map();

function sendJson(res, status, payload, headers = {}) {
  const body = JSON.stringify(payload);
  res.writeHead(status, { "Content-Type": "application/json; charset=utf-8", ...headers });
  res.end(body);
}

function cookies(req) {
  const result = {};
  for (const part of (req.headers.cookie || "").split(";")) {
    const trimmed = part.trim();
    if (!trimmed) continue;
    const i = trimmed.indexOf("=");
    result[decodeURIComponent(trimmed.slice(0, i))] = decodeURIComponent(trimmed.slice(i + 1));
  }
  return result;
}

function currentUser(req) {
  const id = sessions.get(cookies(req).demo_session);
  return users.find(user => user.id === id) || null;
}

function safeUser(user) {
  return { id: user.id, name: user.name, email: user.email, role: user.role };
}

async function body(req) {
  let raw = "";
  for await (const chunk of req) raw += chunk;
  return raw ? JSON.parse(raw) : {};
}

function serve(req, res) {
  const pathname = new URL(req.url, `http://${req.headers.host}`).pathname;
  const requested = pathname === "/" ? "/index.html" : pathname;
  const file = path.join(PUBLIC_DIR, path.normalize(requested));
  if (!file.startsWith(PUBLIC_DIR)) return res.end("Forbidden");
  fs.readFile(file, (error, data) => {
    if (error) { res.writeHead(404); return res.end("Not found"); }
    const type = file.endsWith(".html") ? "text/html" : file.endsWith(".css") ? "text/css" : "text/javascript";
    res.writeHead(200, { "Content-Type": `${type}; charset=utf-8` });
    res.end(data);
  });
}

http.createServer(async (req, res) => {
  const pathname = new URL(req.url, `http://${req.headers.host}`).pathname;

  if (req.method === "POST" && pathname === "/api/login") {
    const data = await body(req);
    const user = users.find(u => u.email === data.email && u.password === data.password);
    if (!user) return sendJson(res, 401, { error: "Invalid email or password." });
    const sid = crypto.randomUUID();
    sessions.set(sid, user.id);
    return sendJson(res, 200, { user: safeUser(user) }, {
      "Set-Cookie": `demo_session=${sid}; HttpOnly; SameSite=Lax; Path=/`
    });
  }

  if (req.method === "GET" && pathname === "/api/me") {
    const user = currentUser(req);
    return user ? sendJson(res, 200, { user: safeUser(user) }) : sendJson(res, 401, { error: "Not signed in." });
  }

  if (req.method === "GET" && pathname === "/api/admin/students") {
    // Intentionally unfinished. The evaluation asks the agent to decide how authorization should work.
    return sendJson(res, 501, { error: "Admin endpoint is not implemented." });
  }

  if (req.method === "POST" && pathname === "/api/logout") {
    const sid = cookies(req).demo_session;
    if (sid) sessions.delete(sid);
    return sendJson(res, 200, { ok: true }, { "Set-Cookie": "demo_session=; Path=/; Max-Age=0" });
  }

  if (pathname.startsWith("/api/")) return sendJson(res, 404, { error: "Not found." });
  serve(req, res);
}).listen(PORT, () => console.log(`Eval fixture: http://localhost:${PORT}`));
