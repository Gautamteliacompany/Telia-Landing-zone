# About

This repo is used for managed cloud projects that are deployed using github actions and terraform.

## Requirements - Azure

In order to use these actions for azure you need to prep the repo for OIDC connection towards your azure tenant.
See detailed instructions [here](https://github.com/Azure-Samples/terraform-github-actions?tab=readme-ov-file#getting-started)

## How to reference these github actions jobs

To use these premade github actions from this repo you can reference the action in your new repos workflow files like below:

```
jobs:
  jobname:
    uses: telia-company/managed-cloud-actions/.github/workflows/{worfklowfilename}.yml@main
    secrets: inherit #This makes the job inherit the secrets from the caller repo
```

For an example usage of these actions see [Managed Cloud Exampleorg](https://github.com/telia-company/managed-cloud-exampleorg)
