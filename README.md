# microblog-elm

## Requirements
**Node** (>= 6.9) installed

**Yarn** (>= 0.21.3) installed
```console
npm install -g yarn@0.21.3
```

## Development

### Installing the application
```console
yarn
```

### Launching tests
```console
yarn test
or
yarn test-watch
```

### Building CSS

```console
yarn build-css
```

### Launching the application
It uses webpack 2 to sequentially run the ELM compiler, build the resulting JS bundle and serve it through a dedicated local server.

```console
yarn watch
```

You can then access the application : [http://localhost:8080](http://localhost:8080)
