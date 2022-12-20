#!/bin/bash

if [[ -z "$GH_TOKEN" ]]; then
	echo "GH_TOKEN environment variable require"
	exit 1
fi

SECRET_EXISTS=$(docker run -v $(pwd):/src -w /src -e GH_TOKEN -e KEY_BUILD --rm -it ghcr.io/supportpal/github-gh-cli gh secret list |grep TOKEN_KEY_BUILD_PRIVATE|wc -l)

[ "$SECRET_EXISTS" -gt "0" ] && echo "secret TOKEN_KEY_BUILD_PRIVATE already exists" && exit 1

docker run -it --rm -v $(pwd):/tmp openwrt/sdk:latest ./staging_dir/host/bin/usign -G -s /tmp/key-build -p /tmp/key-build.pub -c "Openwrt Custom repository Signature Keys"

FINGERPRINT="$(docker run -it --rm -v $(pwd):/tmp openwrt/sdk:latest ./staging_dir/host/bin/usign -F -p /tmp/key-build.pub)"

export KEY_BUILD="$(cat key-build)"

git rm .keys/*
mv key-build.pub .keys/$FINGERPRINT
rm key-build*
        
docker run -v $(pwd):/src -w /src -e GH_TOKEN -e KEY_BUILD --rm -it ghcr.io/supportpal/github-gh-cli gh secret set TOKEN_KEY_BUILD_PRIVATE --body "$KEY_BUILD"

git add .keys/*
git commit -m 'add public key'
git push

