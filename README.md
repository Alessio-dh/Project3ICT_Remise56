# ICT Projects - Remise 56

## Mail doen werken:

Toevoegen aan .env bestand:
```
MAIL_DRIVER=smtp
MAIL_HOST=smtp.gmail.com
MAIL_PORT=587
MAIL_USERNAME=projectremise56@gmail.com
MAIL_PASSWORD=eloict123
MAIL_ENCRYPTION=tls
```
## Webshop doen werken:

Eerst de composer updaten en config clearen met:
```
composer update

php artisan config:cache
```
Daarna de database dump installeren

Als er fouten zijn met de database verbinding, controleer dan in config/shop.php of de database instellingen juist staan.

## Login doen werken:

Voer dit commando uit:
```
php artisan make:auth
```
