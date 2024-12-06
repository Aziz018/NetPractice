# Example: Visiting a Website
- Let’s use a real example to summarize:

1. **You request a webpage**: You type `www.example.com` in your browser and hit enter. Your browser initiates a connection request to the server hosting the website using **TCP** on **Port 443** (for HTTPS).

2. **DNS Resolution**: Before sending packets, your computer uses the **DNS (Domain Name System)** to resolve `www.example.com` into an IP address, say `93.184.216.34`.

3. **Packet Creation**: Your computer breaks down the HTTP request into smaller packets. Each packet contains:

- **Source IP**: Your device’s IP address, say `192.168.1.10`.
- **Destination IP**: The web server's IP address `93.184.216.34`.
- **Source Port**: A randomly assigned port from your computer (e.g., `50432`).
- **Destination Port**: **Port 443** (HTTPS).
- **Payload**: A portion of your HTTP request.
4. **Local Delivery**: The packets are sent to your home router, which forwards them to your ISP. The ISP routes them to the broader internet.

5. **Packet Routing**: Packets hop across multiple routers between your ISP and the destination ISP. Each router looks at the destination IP address and forwards the packet toward the web server’s network.

6. **Web Server**: The packets arrive at the web server, which reassembles them to process the request and sends back the website content in response packets.

7. **Receiving the Response**: The response packets follow the reverse path, arriving at your device. Your browser reassembles the packets to display the webpage.