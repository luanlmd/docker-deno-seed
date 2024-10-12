FROM denoland/deno:2.0.0

WORKDIR /src
USER deno

ENTRYPOINT ["deno", "run", "--watch", "--allow-net", "--allow-env",  "/src/index.ts"]