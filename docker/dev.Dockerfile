FROM hayd/alpine-deno:1.1.3

WORKDIR /src
USER deno

RUN deno install --allow-read --allow-run --allow-write --allow-net -f --unstable https://deno.land/x/denon@v2.2.0/denon.ts
ENV PATH="/home/deno/.deno/bin:${PATH}"

ENTRYPOINT ["denon", "run", "--allow-net",  "/src/index.ts"]