# Godmode
---

### Note: this is a pre-pre-alpha version, the API is subject to rapid overhauls and it is not intended for use quite yet.


       __________  ____     __  _______  ____  ______
      / ____/ __ \/ __ \   /  |/  / __ \/ __ \/ ____/
     / / __/ / / / / / /  / /|_/ / / / / / / / __/   
    / /_/ / /_/ / /_/ /  / /  / / /_/ / /_/ / /___   
    \____/\____/_____/  /_/  /_/\____/_____/_____/  

                          ,/
                        ,'/
                      ,' /
                    ,'  /_____,
                  .'____    ,'    
                       /  ,'
                      / ,'
                     /,'
                    /'



GoDmoDe: A supercharged application generator.

# Description
---

### You know what's annoying?  

Rewriting a user model for the 10th time, using a combination  of copy and paste of old projects or just rewriting the code from memory.  As developers I'm convinced that we are not doing enough to automate the code that makes up 80% of functionality for modern web apps.  From scheduling, to categories, to social links, to images, to location, there are functionality and interactions that come up again, and again, and again, and again.  So let's:

### write code to write your code!

#### Have respect for your time, for your client's money, and for your sanity: automate!  

With this in mind, I've created an application generator using a constrained set of tools to facilitate great interoperability between pieces.  The goal is to use interactive command line tools to create models with all of their related parts.  For example:

### gdd build user

* Models: user, role, user_roles   
* Views: [Authbox](http://) angular.js widget 
* Custom [devise](http://) controllers
* Emails sent through [sendgrid](http://)
* Admin 

### gdd build gallery_image

* Gems: carrierwave, fog, figaro
* Models: gallery_image
* Views: _gallery, _form
* Admin
    
### gdd build category

* Subcategory nesting using [awesome_nested_tree](http://)
* Category management in administration using [rails_admin_nestable](http://) 
* Category breadcrumbs using [Zurb Foundation](http://)
  
### Follow

* Models: polymorphic Follow model
* Concerns: Followable 
* Helpers: follow button

### GalleryImage

* Uploaders: carrierwave ImageUploader model
* Models: polymorphic GalleryImage model
* Views
  * Form Helper for adding multiple images
  * Fluidbox for viewing galleries
* Remote storage on S3 using Fog
* Admin
  
### Address

* Models: polymorphic Address model
* Concerns: Addressable
* Geolocation using Geo
* rails_admin_geo

### Layout

* flexbox driven css

### Social Buttons


   

# Documentation
---

## The Stack

| ------------- |------------|
| Framework      | [rails](https://github.com/rails/rails) |
| Database      | [pg](https://bitbucket.org/ged/ruby-pg/wiki/Home)      |
| User Auth | [devise](https://github.com/plataformatec/devise), [cancan](https://github.com/ryanb/cancan)      |
| Views   | angular.js, zurb foundation 5 |
| Controllers| [decent_exposure](https://github.com/voxdolo/decent_exposure)|
| Models | [squeel](https://github.com/activerecord-hackery/squeel), [pacecar](https://github.com/thoughtbot/pacecar)      |
| Administration | [rails_admin](https://github.com/sferik/rails_admin) |
| Image Manipulation | [carrierwave](https://github.com/carrierwaveuploader/carrierwave), [fog](https://github.com/fog/fog) |
| Categories | [awesome_nested_set](https://github.com/collectiveidea/awesome_nested_set) |
| SMTP | Sendgrid |
| Geolocation | [geo](https://github.com/AppGeo/geo) |
| Testing | [rspec](https://github.com/rspec/rspec) |
| Debugging | [jazz_hands](https://github.com/nixme/jazz_hands), [better_errors](https://github.com/charliesome/better_errors), [quiet_assets](https://github.com/evrone/quiet_assets) |


## Usage
---

### gdd new:project_name

### gdd init

Will install missing gems

### gdd scaffold:model_name



# Installation
---

    $ gem install gdd