# HTTP Requests

An **HTTP request** is a message sent by a client (usually a web browser) to a server to request resources or perform actions. HTTP stands for **HyperText Transfer Protocol**, and it is the foundation of data communication on the web.

HTTP requests are used to interact with web servers and retrieve or submit data. Every time you visit a website or make a request to a server, an HTTP request is sent.

---

## Structure of an HTTP Request

An HTTP request is made up of the following parts:

1. **Request Line**: This includes the HTTP method, the resource path, and the HTTP version.
   - **HTTP Method**: The action the client wants to perform on the server.
   - **Request URI**: The path to the resource being requested on the server.
   - **HTTP Version**: The version of the HTTP protocol being used.

**Example**: `GET /index.html HTTP/1.1`

- `GET`: HTTP method
- `/index.html`: Resource being requested
- `HTTP/1.1`: HTTP version

2. **Headers**: These provide additional information about the request, such as the type of data the client can accept, the client’s identity, and connection settings.
- **Host**: Specifies the domain name of the server.
- **User-Agent**: Identifies the client software (e.g., web browser).
- **Accept**: Specifies the media types that the client is willing to accept (e.g., text/html, application/json).
- **Authorization**: Contains credentials for authentication (e.g., username and password).

<!-- **Example**: -->
