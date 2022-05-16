# Naming Standards

## Server Hostnames

### Prefix

All of our server hostnames begin with the `snap-` prefix.

### Machine type

Next we add the machine type. By the term "Machine type" we mean what
type of VM system is this.

Here are a few examples to understand this:

-   `rabbit-` : RabbitMQ server.
-   `openvpn-` : OpenVPN server.
-   etc

### Environment

Finally  we suffix the name to indicate server environment.

Options:

-   `-test` : Dev / test system.
-   `-prod` : Live / Production system.

### Examples

* snap-openvpn-test
* snap-rabbit-primary-test
* snap-rabbit-secondary-node1-test
