FROM denoland/deno:1.10.3

WORKDIR /src
USER deno

ADD src .
RUN deno cache /src/deps.ts

CMD ["run", "--allow-net", "/src/index.ts"]