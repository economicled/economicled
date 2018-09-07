# Installation
To install magento, I used this command :
```
git clone `this repository`
composer install
(Install ruby and bundler)
bundle install
cd update
composer install
```
Then
```
bin/magento setup:install \
    --db-host=127.0.0.1 \
    --db-name=digimage \
    --db-user=root \
    --db-password=root \
    --backend-frontname=admin \
    --base-url=http://127.0.0.1:8080/ \
    --language=fr_FR \
    --timezone=Europe/Paris \
    --currency=EUR \
    --admin-lastname=Admin \
    --admin-firstname=Admin \
    --admin-email=admin@example.com \
    --admin-user=admin \
    --admin-password=admin123 \
    --cleanup-database \
    --use-rewrites=1
```
`php bin/magento deploy:mode:set developer`
# Déploiement
`ssh-add ~/.ssh/id_rsa`
puis
`cd tools/cap && cap production deploy`

# Dev payment
If you dump a production database for development, the paypal credentials are invalid for use in sandbox
you can reconfigure it in admin panel to :
Shop > Configuration > Sale > Payment Methods > Paypal Express Checkout

```
Api user : contact-facilitator_api1.lightintheled.fr
Api password : YMTLRWRV74XZ494V
Api signature : AL2JnWwKiC0ffEqmN.VpcGPrTKPaAEXUD6g1Pa2lIyAKJ45c93GKNe9S
```

To process a payment as a customer you nedd to use this account
```
email : contact-buyer@lightintheled.fr
password : @TestPaypal13160
```
