import { copy } from "./deps.ts";

const PORT = Deno.env.get("PORT");
console.log(PORT);

Deno.serve({port:PORT},(req) => {
  return new Response("Hello from Deno");
});
