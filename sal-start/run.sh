if [ -z "$HEAD_REF" ]; then
  BRANCH=${REF#refs/heads/}
else
  BRANCH=$HEAD_REF
fi

vi-tools sal:build --user=${GH_USER} --repo=${GH_REPO} --sha1=${GH_SHA} --pr_urls=${PR_URL} --branch=${BRANCH}
