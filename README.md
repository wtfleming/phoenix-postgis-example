# phoenix-postgis-example

Example website with geospatial features using the Phoenix Framework, D3, and PostGIS.

To run this you will need to have Elixir installed and download data from https://www.kaggle.com/kaggle/climate-data-from-ocean-ships.
Instructions to get up and running are available on [this blog post][blog-post], but once everything is setup you can start the server like this:

```sh
$ npm install
$ mix ecto.create
$ mix ecto migrate
$ mix phoenix.server
$ open http://localhost:4000
```

[blog-post]: http://wtfleming.github.io/2016/01/28/geospatial-app-elixir-postgis-phoenix/
