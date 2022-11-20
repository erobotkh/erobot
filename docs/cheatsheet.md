# Cheat sheet
Random note that we can put and organize later:

```
rails generate model Taxonomy name:string taxonomy_type:string position:integer
rails generate model Taxon name:string position:integer parent:references taxonomy:reference
rails generate model Post title:string plain_body:text rich_body:text taxon:references
rails generate model Team name:string description:string position:integer parent:references
```