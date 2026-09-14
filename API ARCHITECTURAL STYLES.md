# API ARCHITECTURAL STYLES

##  COMPARE
```
Style      Transport     Style of call     Real-time     Contract
REST       HTTP          Resource verbs    Polling       Informal / OpenAPI
GraphQL    HTTP          Query/mutation    Optional      Schema
SOAP       HTTP/SMTP     Operation         Limited       WSDL
gRPC       HTTP/2        RPC methods       Streaming     Protobuf
WebSocket  TCP (upgrade) Events/messages   Native        App-defined
MQTT       TCP           Pub/Sub           Native        Topics + QoS
```

---

## RESTful
```
Type: Resource-oriented HTTP API
Fundamentals: Uses standard HTTP methods on resources. Stateless, cacheable, uniform interface.
Key ideas: resources, URIs, verbs (GET, POST, PUT, PATCH, DELETE), representations, HATEOAS
Typical payload: JSON / XML
Best for: public APIs, CRUD services, web backends
```
## GraphQL
```
Type: Query language over a single endpoint
Fundamentals: Client asks only for the fields it needs. Flexible and efficient retrieval.
Key ideas: schema, types, queries, mutations, subscriptions, resolvers
Typical payload: JSON
Best for: mobile apps, complex nested data, reducing over-fetching
```
## SOAP
```
Type: Protocol-based XML API
Fundamentals: Formal contract via WSDL. Built-in security, transactions, reliability.
Key ideas: envelopes, headers, body, WSDL, XML Schema, WS-Security
Typical payload: XML
Best for: enterprise systems, banking, strict contracts
```
## gRPC
```
Type: High-performance RPC
Fundamentals: Remote procedure calls with Protocol Buffers. Fast binary serialization.
Key ideas: services, methods, protobuf messages, HTTP/2, streaming (unary, client, server, bidirectional)
Typical payload: Protocol Buffers
Best for: microservices, internal APIs, low-latency systems
```
## WebSockets
```
Type: Persistent full-duplex connection
Fundamentals: Real-time two-way communication over one TCP connection after HTTP upgrade.
Key ideas: handshake, frames, events, keep-alive, rooms/channels
Typical payload: JSON / binary frames
Best for: chat, live dashboards, games, market streams
```
## MQTT
```
Type: Lightweight pub/sub messaging
Fundamentals: Broker-based publish/subscribe. Designed for low bandwidth and unreliable networks.
Key ideas: topics, QoS (0/1/2), retain, last will, broker, clients
Typical payload: small binary or JSON messages
Best for: IoT, sensors, telemetry, constrained devices
```

---

## PYTHON HINTS
```
REST:      requests, FastAPI, Flask
GraphQL:   graphene, strawberry, gql
SOAP:      zeep
gRPC:      grpcio, protobuf
WebSocket: websockets, FastAPI WebSocket
MQTT:      paho-mqtt
```
