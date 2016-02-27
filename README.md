# Hsmarket

# Getting started

This application assumes you have at least Ruby, Postgres and other dependencies to run.
If that is not the case you can use [kaishi] to install everything you need.

[kaishi]: https://github.com/IcaliaLabs/kaishi

After setting up you can start using the application:

  % rails server

Or if you feel like using Foreman (comes with kaishi):

  % foreman start

## Icalia Guides

Remember you can always rely on the Icalia Guides to a better development and
internal progamming style:

* [Rails Guides](https://github.com/IcaliaLabs/icalia_guides/tree/master/rails)



```yml
Marketplace:
  description: Aplicación para administrar tiendas, productos y órdenes.
  stories:
    admin:
      - Como admin puedo crear una tienda.
      - Puedo crear usuarios de tipo manager.
      - Puedo eliminar usuarios de tipo manager.
      - Puedo crear productos dentro de la tienda.
      - Puedo modificar existencia de productos.
      - Puedo administrar órdenes de la tienda.
    manager:
      - Puedo crear productos dentro de la tienda.
      - Puedo modificar existencia de productos.
      - Puedo administrar órdenes de la tienda.
    client:
      - Puede modificar su información.
      - Puede crear órdenes.
      - puede agregar productos a la orden.
      - Puede quitar productos de la orden.
  resources:
    - [Rolify](https://github.com/RolifyCommunity/rolify)
  schema:
    user:
      #devise stuff
      name:string
      auth_token:string
      username:string
    address:
      owner_type:string
      owner_id:integer
      name:string
      address_type:integer
      street:string
      street_number:string
      suite:string
      neighbourhood:string
      municipality:string
      state:string
      country:string
      zipcode:integer
      latitude:decimal
      longitude:decimal
    shop:
      name:string
      description:text
    product:
      shop_id:integer
      name:string
      description:text
      price:decimal
      quantity:integer
    order:
      shop_id:integer
      user_id:integer
      total:decimal
      status:integer
    item:
      order_id:integer
      product_id:integer
      quantity:integer
      unit_price:integer
      total:decimal
```