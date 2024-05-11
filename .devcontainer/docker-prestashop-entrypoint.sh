#!/bin/bash

if [ ! -f /var/www/html/.post-install-complete ]; then
    cd /var/www/html
    export XDEBUG_MODE=off

    wait_for() {
        local retry=60
        local timeout=1
        local start=$(date +%s)

        while [ $(($(date +%s) - $start)) -lt $retry ]; do
            if "$@" > /dev/null 2>&1; then
                return 0
            fi
            sleep $timeout
        done
        return 1
    }

    # Wait for database to be ready and then create it.
    echo "🔍 Waiting for database to be ready..."
    DB_PORT=3306
    result=$(($(wait_for nc -z "${PS_DB_SERVER}" "${DB_PORT}")))
    if [ $result -eq 1 ]; then
        echo "❌ ${PS_DB_SERVER}:${DB_PORT} is not available"
        exit 1
    fi

    echo "🚀 Installing PrestaShop..."
    
    php install/index_cli.php \
    --domain=${PS_DOMAIN} \
    --db_server=${PS_DB_SERVER} \
    --db_name=${PS_DB_NAME} \
    --db_user=${PS_DB_USER} \
    --db_password=${PS_DB_PASSWORD} \
    --prefix=${PS_PREFIX} \
    --email=${PS_EMAIL} \
    --password=${PS_PASSWORD}

    rm -rf install

    touch /var/www/html/.post-install-complete
fi
echo "✅ PrestaShop installed and configured."