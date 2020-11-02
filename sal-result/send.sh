
if [ -f "$PHP_TESTS" ]; then
  vi-tools sal:result --user="$GH_USER" --repo="$GH_REPO" --sha1="$GH_SHA" \
    --type=tests \
    --file="$PHP_TESTS"
fi

if [ -f "$PHP_COVERAGE" ]; then
  vi-tools sal:result --user="$GH_USER" --repo="$GH_REPO" --sha1="$GH_SHA" \
    --type=coverage \
    --file="$PHP_COVERAGE"
fi

if [ -f "$PHP_CS" ]; then
  vi-tools sal:result --user="$GH_USER" --repo="$GH_REPO" --sha1="$GH_SHA" \
    --type=php-cs \
    --file="$PHP_CS"
fi

if [ -f "$PHP_CPD" ]; then
  vi-tools sal:result --user="$GH_USER" --repo="$GH_REPO" --sha1="$GH_SHA" \
    --type=cpd \
    --file="$PHP_CPD"
fi

if [ -f "$PHP_LOC" ];  then
  vi-tools sal:result --user="$GH_USER" --repo="$GH_REPO" --sha1="$GH_SHA" \
    --type=loc \
    --file="$PHP_LOC"
fi

if [ -f "$PHP_MD" ]; then
  vi-tools sal:result --user="$GH_USER" --repo="$GH_REPO" --sha1="$GH_SHA" \
    --type=pmd \
    --file="$PHP_MD"
fi

if [ -f "$JS_CS" ]; then
  vi-tools sal:result --user="$GH_USER" --repo="$GH_REPO" --sha1="$GH_SHA" \
    --type=js-cs \
    --file="$JS_CS"
fi
