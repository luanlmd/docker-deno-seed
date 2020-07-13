import { serve } from "https://deno.land/std@0.60.0/http/server.ts";

const PORT = 8000;
const server = serve(`0.0.0.0:${PORT}`);

console.error(`Server started on port ${PORT}`);
for await (const req of server) {
  const body = "Hello Deno"
  req.respond({ body });
}