FROM denoland/deno:1.36.1

WORKDIR /src
USER deno

ADD src .
RUN deno cache /src/deps.ts

CMD ["run", "--allow-net", "--allow-env", "/src/index.ts"]