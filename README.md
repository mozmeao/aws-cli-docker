# aws-cli-docker

Docker image for our aws-cli use.

## How to use

Copy the `aws-docker` script to your machine or repo and use it in place of the `aws` command. It mounts the default
config directory from the host (`~/.aws/`) for authentication, and the current working directory to `/app` so that
you can work with local files.

### Example

```bash
$ aws-docker s3 sync ./ s3://my-bucket-name/
```

## Publication

To build and publish the image you can just run the `./publish` command if you're logged into the docker hub.
