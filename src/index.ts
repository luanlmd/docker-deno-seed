import { serve } from "./deps.ts";

const PORT = 8000;
const server = serve(`0.0.0.0:${PORT}`);

console.error(`Server started on port ${PORT}`);
for await (const req of server) {
  const body = "Hello Deno"
  req.respond({ body });
}