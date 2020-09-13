FROM hayd/alpine-deno:1.4.0

WORKDIR /src
USER deno

ENTRYPOINT ["deno", "run", "--watch", "--unstable", "--allow-net",  "/src/index.ts"]