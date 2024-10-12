FROM denoland/deno:2.0.0

WORKDIR /src
USER deno
ADD src .

RUN deno check /src/index.ts
RUN deno test

FROM denoland/deno:2.0.0

WORKDIR /src
USER deno
ADD src .

RUN deno cache /src/index.ts

CMD ["run", "--allow-net", "--allow-env", "/src/index.ts"]