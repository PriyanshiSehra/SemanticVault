# Build SemanticVault as a Linux C++ application.
FROM debian:bookworm-slim AS build
RUN apt-get update \
    && apt-get install -y --no-install-recommends g++ ca-certificates \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY main.cpp httplib.h index.html ./
RUN g++ -std=c++17 -O2 -pthread main.cpp -o semanticvault

# Small runtime image.
FROM debian:bookworm-slim
RUN apt-get update \
    && apt-get install -y --no-install-recommends ca-certificates \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY --from=build /app/semanticvault ./semanticvault
COPY --from=build /app/index.html ./index.html
ENV PORT=10000
EXPOSE 10000
CMD ["./semanticvault"]
