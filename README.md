# accredible
Install
--------
Add the following line to Gemfile:

```ruby
gem 'accredible-ruby'
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
  cohort_name: "Example Cohort",
  description: "A certificate of completion for a cool course",
  issued_on: "2016-03-15",
  course_link: "http://onemonth.com/courses/one-month-rails"}

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
```

Supported Ruby versions
-----------------------
  Currently only Ruby 2.0+ is supported. Contributions are welcome if you need to
  support a different version.

License
-------
Accredible-Ruby is is free software, and may be redistributed under the 
terms specified in the [LICENSE](/LICENSE) file.

Thanks to
---------
[One Month](http://onemonth.com) - For allowing this gem to be extracted and open sourced.
