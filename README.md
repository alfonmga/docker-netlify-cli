# docker-netlify-cli

A Docker image for [netlify/cli][a].

[a]: https://github.com/netlify/cli

```sh
docker image pull williamjackson/netlify-cli
```

## Available tags

*   `latest` &rarr; `2.19.5`
*   `2.18.2`
*   `2.17.0`
*   `2.16.0`
*   `2.15.0`
*   `2.14.0`
*   `2.13.1`

## Usage

In your [Netlify user settings][b], create a personal access token. Set the environment variable `NETLIFY_AUTH_TOKEN`
inside the container.

[b]: https://app.netlify.com/user/applications

The default working directory in the container is `/project`, so mount your project directory into the container at that
location.

Specify the Netlify CLI command after the image name.

```sh
docker container run -it \
    -e NETLIFY_AUTH_TOKEN=<personal_access_token> \
    -v /path/to/project:/project \
    williamjackson/netlify-cli \
    deploy
```
