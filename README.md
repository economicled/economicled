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
    --base-url=http://dev.digimage.com/ \
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
`cd tools/cap && cap staging deploy`
# Dev frontend
Exécute :
```
mv package.json.sample package.json
mv Gruntfile.js.sample Gruntfile.js
```
Add this key to `dev/tools/grunt/configs/themes.js`
```
ethan: {
    area: 'frontend',
    name: 'Mgs/ethan',
    locale: 'fr_FR',
    files: [
        'css/theme',
        'css/theme_default',
        'css/responsive',
        'css/menu',
        'css/email'
    ],
    dsl: 'less'
}
```
Run :
```
grunt clean:ethan
grunt exec:ethan
grunt less:ethan
grunt watch
```
Enable livereload on your browser :
http://livereload.com/
Enable it and when you modify a less file, it should refresh

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
