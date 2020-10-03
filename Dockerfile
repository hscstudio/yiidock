FROM yiisoftware/yii-php:7.4-fpm
# Set working directory
WORKDIR /var/www/html

RUN chown -R www-data:www-data /var/www/html

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
