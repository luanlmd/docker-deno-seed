FROM hayd/alpine-deno:1.4.0

WORKDIR /src
USER deno

ADD src .
RUN deno cache /src/deps.ts

CMD ["run", "--allow-net", "/src/index.ts"]