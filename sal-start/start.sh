
if [ -z "$HEAD_REF" ]; then
  BRANCH=${REF#refs/heads/}
else
  BRANCH=$HEAD_REF
fi

echo "User:         ${GH_USER}"
echo "Repository:   ${GH_REPO}"
echo "SHA1:         ${GH_SHA}"
echo "PR:           ${PR_URL}"
echo "Branch:       ${BRANCH}"

vi-tools sal:build --user=${GH_USER} --repo=${GH_REPO} --sha1=${GH_SHA} --pr_urls=${PR_URL} --branch=${BRANCH}
