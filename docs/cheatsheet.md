# Cheat sheet
Random note that we can put and organize later:

```
rails generate model Taxonomy name:string taxonomy_type:string position:integer
rails generate model Taxon name:string position:integer parent:references taxonomy:reference
rails generate model Post title:string plain_body:text rich_body:text taxon:references
rails generate model Team name:string description:string position:integer parent:references
rails generate model SocialType name:string url:string launch_strategy:string

rails generate model Social first_name:string first_name:string username:string connectable:references social_type:references

rails generate model Member first_name:string last_name:string team:references user:references
rails generate model Organization name:string type:string description:string

rails generate model Timeline headline:string description:string type:string started_at:datetime ended_at:datetime member:references organization:references
```