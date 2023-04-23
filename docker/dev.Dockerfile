FROM denoland/deno:1.30.3

WORKDIR /src
USER deno

ENTRYPOINT ["deno", "run", "--watch", "--unstable", "--allow-net", "--allow-env",  "/src/index.ts"]