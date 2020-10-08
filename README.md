# Bundler::GemNotFound for gems with native extensions removed from disk

This project demonstrates a potential issue with Bundler. Calling `Bundler.setup` will throw `Bundler::GemNotFound` for gems whose native extensions have been removed from disk, even if the gem is already activated.

```
docker build -t bundler-gem-not-found .
docker run --rm bundler-gem-not-found
```
