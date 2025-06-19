#!/bin/bash

# Sync with S3
aws s3 sync ../static s3://stolbovsky.com/ --delete --exclude "idleops/*" --exclude "mrdashington/*"

# Invalidate CloudFront cache
aws cloudfront create-invalidation --distribution-id E1N4NNQ4EMHBIO --paths "/*"
