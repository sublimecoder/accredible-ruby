![Accredible Logo](https://s3.amazonaws.com/accredible-cdn/accredible_logo_sm.png)

# Accredible API Ruby SDK
![Build Status](https://travis-ci.org/accredible/accredible-api-ruby.svg?branch=master)

Overview
--------
The Accredible platform enables organizations to create, manage and distribute digital credentials as digital certificates or open badges.

An example digital certificate and badge can be viewed here: https://www.credential.net/10000005

This gem wraps the Accredible API in Ruby for easy integration into projects. The full REST API documentation can be found here: http://docs.accrediblecredentialapi.apiary.io/ 

We forked the original by sublimecoder so that we can provide updates without interfering with their active usage. This repository and gem are the officially maintained Ruby wrappers for Accredible.

Example Output
--------------
![Example Digital Certificate](https://s3.amazonaws.com/accredible-cdn/example-digital-certificate.png)

![Example Open Badge](https://s3.amazonaws.com/accredible-cdn/example-digital-badge.png)

Install
--------
Add the following line to Gemfile:

```ruby
gem 'accredible-api-ruby'
```
and run `bundle install` from your shell.
Then add the following line to an initializer, or appropriate config file.

```ruby
Accredible.api_key = ENV['ACCREDIBLE_API_KEY']
```

Basic Usage
-----------
```ruby
# creating a certificate
recipient = {name: "Jared Smith", email: "example@example.com"}
credential = {name: "#{course.title}",
  group_name: "Example Group",
  description: "A certificate of completion for a cool course"}

Accredible::Credential.create(
    recipient: recipient, 
    credential: credential)
```

Further Examples
-----------
```ruby
# creating a credential
recipient = {name: "Jared Smith", email: "example@example.com"}
credential = {
  group_name: "Example Group",
  issued_on: "2016-03-15"}

# evidence and references are both optional but can be constructed like this
  evidence =
  [{description: "Evidence of completion",
    url: "http://example.com/evidence",
    category: "url"},
{description: "Evidence of completion 2",
file: "https://s3.amazonaws.com/accredible_api_evidence_items/files/12/original/open-uri20140316-15266-1m3by6h.jpeg",
      category: "file"}]
      references= [{description: "John worked hard", 
        relationship: "managed",
        referee: {name: "Jane Doe", 
          email: "jane@example.com",
          avatar: "https://placehold.it/100x100"}}
      ]

Accredible::Credential.create(
    recipient: recipient, 
    credential: credential,
    evidence: evidence,
    references: references)

#updating a credential
credential = {reciopient: {name: "Updated Name"}}
Accredible::Credential.update(id:"1234", credential: {name: "new credential name"})

#deleting a credential
cred = Accredible::Credential.delete("1234")

#for viewing all credentials
groups = Accredible::Credential.view_all(group_id: "1234", email: "student@example.com")

# creating a group
group = 
  {
        "name": "new group",
        "course_name": "Intro to Prgramming",
        "course_description": "Description of course",
        "course_link": "http://www.example.com",
        "language": "en",
        "attach_pdf": false
    }


Accredible::Group.create(
    group: group, 
    design_id: 12)

#updating a group
Accredible::Group.update(group_id:"1234", group: {name: "new group name"})

#deleting a group
Accredible::Group.delete(group_id:"1234")

#for viewing a group
Accredible::Group.view("1234")

#for viewing all groups
groups = Accredible::Group.view_all

#for viewing all designs
designs = Accredible::Design.view_all

```
Supported Ruby versions
-----------------------
  Currently only Ruby 2.0+ is supported. Contributions are welcome if you need to
  support a different version.

Bug reports
-----------

If you discover any bugs, feel free to create an issue on GitHub. Please add as much information as possible to help us fixing the possible bug. We also encourage you to help even more by forking and sending us a pull request.

https://github.com/accredible/accredible-api-ruby/issues

License
-------
Accredible-API-Ruby is is free software, and may be redistributed under the 
terms specified in the [LICENSE](/LICENSE) file.

Thanks to
---------
[One Month](http://onemonth.com) - For allowing this gem to be extracted and open sourced.
