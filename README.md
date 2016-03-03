#Namespaced ActsAsTaggableOn

This plugin was forked from from https://github.com/mbleigh/acts-as-taggable-on/

It works almost in the same way that original plugin, except that there's a 'namespace' attribute for ActsAsTaggableOn::Tag.

## Usage

```ruby
@user.tag_list.add("tom")
@user.save #create tag 'tom' without namespace

@another_user.tag_list.add("tom")
@another_user.namespace = "cartoon"
@another_user.save #create tag 'tom' for 'cartoon' namespace. Previous 'tom' tag still exists
```

The fork is still pretty unsafe and untested, be careful.
