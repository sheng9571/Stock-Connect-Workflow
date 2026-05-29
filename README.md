# Stock Connect Workflow

Public workflow repository for publishing the generated Stock Connect static HTML
page to GitHub Pages.

The runtime Docker image is built by the private Stock-Connect repository and
published as:

```text
ghcr.io/sheng9571/stock-cn:latest
```

This repository pulls that image, checks out the private Stock-Connect source
repository, runs the code inside the container, and deploys the generated
`index.html` to GitHub Pages.
