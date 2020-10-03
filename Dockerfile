FROM yiisoftware/yii-php:7.4-fpm
# Set working directory
WORKDIR /var/www/html

# COPY ./src /var/www/html
# RUN composer install
RUN chown -R www-data:www-data /var/www
# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
