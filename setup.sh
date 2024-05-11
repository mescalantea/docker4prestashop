#!/bin/bash

# Prestashop / PHP compatibility matrix
# https://devdocs.prestashop-project.org/1.7/basics/installation/system-requirements/
# https://devdocs.prestashop-project.org/8/basics/installation/system-requirements/
# https://devdocs.prestashop-project.org/9/basics/installation/system-requirements/
declare -A psphp
psphp["1.7.0"]="5.4,5.5,5.6,7.0,7.1"
psphp["1.7.1"]="5.4,5.5,5.6,7.0,7.1"
psphp["1.7.2"]="5.4,5.5,5.6,7.0,7.1"
psphp["1.7.3"]="5.4,5.5,5.6,7.0,7.1"
psphp["1.7.4"]="5.6,7.0,7.1"
psphp["1.7.5"]="5.6,7.0,7.1,7.2"
psphp["1.7.6"]="5.6,7.0,7.1,7.2"
psphp["1.7.7"]="7.1,7.2,7.3"
psphp["1.7.8"]="7.1,7.2,7.3,7.4"
psphp["8.0"]="7.2,7.3,7.4,8.0,8.1"
psphp["8.1"]="7.2,7.3,7.4,8.0,8.1"
psphp["9.0"]="8.1,8.2,8.3"

# See https://prestashop.es/versions/
declare -A ps
ps["8.1.5"]="https://assets.prestashop3.com/dst/edition/corporate/8.1.5/prestashop_edition_classic_version_8.1.5.zip"
ps["8.1.4"]="https://assets.prestashop3.com/dst/edition/corporate/8.1.4/prestashop_edition_classic_version_8.1.4.zip"
ps["8.1.3"]="https://assets.prestashop3.com/dst/edition/corporate/8.1.3/prestashop_edition_classic_version_8.1.3.zip"
ps["8.1.2"]="https://assets.prestashop3.com/dst/edition/corporate/8.1.2/prestashop_edition_classic_version_8.1.2.zip"
ps["8.1.1"]="https://assets.prestashop3.com/dst/edition/corporate/8.1.1/prestashop_edition_basic_version_8.1.1.zip"
ps["8.1.0"]="https://assets.prestashop3.com/dst/edition/corporate/8.1.0/prestashop_edition_basic_version_8.1.0.zip"
ps["8.0.4"]="https://assets.prestashop3.com/dst/edition/corporate/8.0.4/prestashop_edition_basic_version_8.0.4.zip"
ps["8.0.2"]="https://assets.prestashop3.com/dst/edition/corporate/8.0.2/prestashop_edition_classic_version_8.0.2.zip"
ps["8.0.1"]="https://assets.prestashop3.com/dst/edition/corporate/8.0.1/prestashop_edition_classic_version_8.0.1.zip"
ps["1.7.8.11"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.11/prestashop_1.7.8.11.zip"
ps["1.7.8.10"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.10/prestashop_1.7.8.10.zip"
ps["1.7.8.9"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.9/prestashop_1.7.8.9.zip"
ps["1.7.8.8"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.8/prestashop_1.7.8.8.zip"
ps["1.7.8.7"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.7/prestashop_1.7.8.7.zip"
ps["1.7.8.6"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.6/prestashop_1.7.8.6.zip"
ps["1.7.8.5"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.5/prestashop_1.7.8.5.zip"
ps["1.7.8.4"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.4/prestashop_1.7.8.4.zip"
ps["1.7.8.3"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.3/prestashop_1.7.8.3.zip"
ps["1.7.8.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.2/prestashop_1.7.8.2.zip"
ps["1.7.8.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.1/prestashop_1.7.8.1.zip"
ps["1.7.8.0"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.8.0/prestashop_1.7.8.0.zip"
ps["1.7.7.8"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.8/prestashop_1.7.7.8.zip"
ps["1.7.7.7"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.7/prestashop_1.7.7.7.zip"
ps["1.7.7.6"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.6/prestashop_1.7.7.6.zip"
ps["1.7.7.5"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.5/prestashop_1.7.7.5.zip"
ps["1.7.7.4"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.4/prestashop_1.7.7.4.zip"
ps["1.7.7.3"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.3/prestashop_1.7.7.3.zip"
ps["1.7.7.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.2/prestashop_1.7.7.2.zip"
ps["1.7.7.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.1/prestashop_1.7.7.1.zip"
ps["1.7.7.0"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.7.0/prestashop_1.7.7.0.zip"
ps["1.7.6.9"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.9/prestashop_1.7.6.9.zip"
ps["1.7.6.8"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.8/prestashop_1.7.6.8.zip"
ps["1.7.6.7"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.7/prestashop_1.7.6.7.zip"
ps["1.7.6.6"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.6/prestashop_1.7.6.6.zip"
ps["1.7.6.5"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.5/prestashop_1.7.6.5.zip"
ps["1.7.6.4"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.4/prestashop_1.7.6.4.zip"
ps["1.7.6.3"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.3/prestashop_1.7.6.3.zip"
ps["1.7.6.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.2/prestashop_1.7.6.2.zip"
ps["1.7.6.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.1/prestashop_1.7.6.1.zip"
ps["1.7.6.0"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.6.0/prestashop_1.7.6.0.zip"
ps["1.7.5.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.5.2/prestashop_1.7.5.2.zip"
ps["1.7.5.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.5.1/prestashop_1.7.5.1.zip"
ps["1.7.5.0"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.5.0/prestashop_1.7.5.0.zip"
ps["1.7.4.4"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.4.4/prestashop_1.7.4.4.zip"
ps["1.7.4.3"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.4.3/prestashop_1.7.4.3.zip"
ps["1.7.4.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.4.2/prestashop_1.7.4.2.zip"
ps["1.7.4.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.4.1/prestashop_1.7.4.1.zip"
ps["1.7.4.0"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.4.0/prestashop_1.7.4.0.zip"
ps["1.7.3.4"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.3.4/prestashop_1.7.3.4.zip"
ps["1.7.3.3"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.3.3/prestashop_1.7.3.3.zip"
ps["1.7.3.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.3.2/prestashop_1.7.3.2.zip"
ps["1.7.3.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.3.1/prestashop_1.7.3.1.zip"
ps["1.7.3.0"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.3.0/prestashop_1.7.3.0.zip"
ps["1.7.2.5"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.2.5/prestashop_1.7.2.5.zip"
ps["1.7.2.4"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.2.4/prestashop_1.7.2.4.zip"
ps["1.7.2.3"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.2.3/prestashop_1.7.2.3.zip"
ps["1.7.2.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.2.2/prestashop_1.7.2.2.zip"
ps["1.7.2.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.2.1/prestashop_1.7.2.1.zip"
ps["1.7.2.0"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.2.0/prestashop_1.7.2.0.zip"
ps["1.7.1.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.1.2/prestashop_1.7.1.2.zip"
ps["1.7.1.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.1.1/prestashop_1.7.1.1.zip"
ps["1.7.1.0"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.1.0/prestashop_1.7.1.0.zip"
ps["1.7.0.6"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.0.6/prestashop_1.7.0.6.zip"
ps["1.7.0.5"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.0.5/prestashop_1.7.0.5.zip"
ps["1.7.0.4"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.0.4/prestashop_1.7.0.4.zip"
ps["1.7.0.3"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.0.3/prestashop_1.7.0.3.zip"
ps["1.7.0.2"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.0.2/prestashop_1.7.0.2.zip"
ps["1.7.0.1"]="https://github.com/PrestaShop/PrestaShop/releases/download/1.7.0.1/prestashop_1.7.0.1.zip"

if [ ! -f .env ]; then
    cp .env.sample .env

    set -o allexport
    source .env.sample
    set +o allexport

    sed -i "s,PS_ZIP_URL=.*,PS_ZIP_URL=${ps[$PS_VERSION]}," .env
fi

set -o allexport
source .env
set +o allexport

# Check if MySQL version is lower than 5.6
if [ $(($(./version_compare.sh ${MYSQL_VERSION} "5.6"))) -eq -1 ]; then
    echo "❌ MySQL version is lower than 5.6"
    exit 1
fi

# Check if Apache version is lower than 2.4
if [ $(($(./version_compare.sh ${APACHE_VERSION} "2.4"))) -eq -1 ]; then
    echo "❌ Apache version is lower than 2.4"
    exit 1
fi

# Check if PHP version is lower than 7.1
if [ $(($(./version_compare.sh ${PHP_VERSION} "7.1"))) -eq -1 ]; then
    echo "❌ PHP version is lower than 7.1"
    exit 1
fi

if [[ ! -v ps[$PS_VERSION] ]]; then
    echo "❌ Prestashop version ${PS_VERSION} is not supported"
    exit 1
fi

if [ $(($(./version_compare.sh ${PS_VERSION} "8.0"))) -eq -1 ]; then
    semver_ps_version=$(echo $PS_VERSION | cut -d'.' -f1-3)
else
    semver_ps_version=$(echo $PS_VERSION | cut -d'.' -f1,2)
fi

if [[ ! "${psphp[$semver_ps_version]}" =~ (^|,)$PHP_VERSION(,|$) ]]; then
    echo "❌ PHP version $PHP_VERSION is not supported in PrestaShop $semver_ps_version. Supported versions: ${psphp[$semver_ps_version]}"
    exit 1
fi

# Run composer install
# docker run --rm -v "$(pwd)"/mymodule:/app -w /app composer:latest composer install

# TODO: Run npm install?

docker compose up -d --build

echo "🚀 Installing PrestaShop $PS_VERSION with PHP $PHP_VERSION..."

retry=300
timeout=1
start=$(date +%s)
while [ $(($(date +%s) - $start)) -lt $retry ]; do
    if docker compose exec web ls /var/www/html/.post-install-complete > /dev/null 2>&1; then
        seconds=$(($(date +%s) - $start))
        echo "✅ Done in ${seconds} seconds."
        echo "🔗 Access your PrestaShop at http://${PS_DOMAIN}/admin"
        echo "Email: $PS_EMAIL"
        echo "Password: $PS_PASSWORD"
        exit 0
    fi
    sleep $timeout
done
echo "❌ Timeout after ${retry} seconds"
exit 1