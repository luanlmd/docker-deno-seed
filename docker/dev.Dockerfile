FROM denoland/deno:1.36.1

WORKDIR /src
USER deno

ENTRYPOINT ["deno", "run", "--watch", "--allow-net", "--allow-env",  "/src/index.ts"]