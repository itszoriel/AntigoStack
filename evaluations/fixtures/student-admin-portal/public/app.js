const form = document.querySelector("#loginForm");
const session = document.querySelector("#session");
const identity = document.querySelector("#identity");
const message = document.querySelector("#message");

function signedIn(user) {
  form.hidden = true;
  session.hidden = false;
  identity.textContent = `${user.name} (${user.role})`;
}

form.addEventListener("submit", async event => {
  event.preventDefault();
  const response = await fetch("/api/login", {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify({
      email: document.querySelector("#email").value,
      password: document.querySelector("#password").value
    })
  });
  const data = await response.json();
  if (response.ok) signedIn(data.user);
  else message.textContent = data.error;
});

document.querySelector("#adminButton").addEventListener("click", () => {
  message.textContent = "Admin feature is intentionally unfinished.";
});

document.querySelector("#logoutButton").addEventListener("click", async () => {
  await fetch("/api/logout", { method: "POST" });
  form.hidden = false;
  session.hidden = true;
  identity.textContent = "";
});
