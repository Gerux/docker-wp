apt-get update && apt-get install -y \
    libicu-dev \
    curl \
    wget \
    git \
    nano \
    gnupg \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libxml2-dev \
    libxslt1-dev \
    libzip-dev \
    unzip \
    zip \
    cron \
    libxrender1 \
    libonig-dev \
    libfontconfig1

# Install necessary PHP extensions
docker-php-ext-install -j$(nproc) \
    bcmath \
    pdo_mysql \
    mysqli \
    xsl \
    soap \
    intl \
    sockets \
    zip

# Clean up cache and temporary files to reduce the image size
apt-get clean && rm -rf /var/lib/apt/lists/*