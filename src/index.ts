import { copy } from "./deps.ts";

const PORT = Deno.env.get("PORT");

Deno.serve({port:PORT},(req) => {
  const data = { success: true, message: "Hello from Deno!" }
  return Response.json(data);
});

console.log('Deno Server Started')