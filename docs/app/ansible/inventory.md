# Inventory

Our Ansible inventory is defined per
environment[environment](../../../standard/naming/#environment) in
`/inventories` directory like so:

```
manual_inventory_test.ini
manual_inventory_prod.ini
```

Typically each host in also placed in a group based on it's [machine
type](../../../standard/naming/#machine-type).
