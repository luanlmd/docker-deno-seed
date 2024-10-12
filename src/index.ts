const PORT = Number(Deno.env.get("PORT")) || 3000;

Deno.serve({ port: PORT }, (req: Request) => {
  console.log({ req })
  const data = { success: true, message: "Hello from Deno!" }
  return Response.json(data);
});

console.log('Deno Server Started')