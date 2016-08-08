# nginx_proxy_example-cookbook

Uses Nginx as a reverse proxy to Bing and Weather with ephemeral port range change to 20000 64000

## Supported Platforms

Ubuntu 14.04

## Attributes
N/a at this time.

## Usage

### new::default

Include `nginx_proxy` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[nginx_proxy::default]"
  ]
}
```

## License and Authors

Author:: Gabe Enslein
