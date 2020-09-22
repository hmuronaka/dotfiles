#!/usr/bin/ruby
require 'yaml'

BookmarkPath='/Users/hmuronaka/Library/Application Support/Google/Chrome/Default/Bookmarks'

bookmarks = YAML.load(File.read(BookmarkPath))

def traverse(items, target_key, &block)
  return unless items.respond_to?(:keys)
  items.keys.each { |key|
    if key == target_key
      block.call items[key]
    end
    traverse(items[key], target_key, &block)
  }
end

traverse(bookmarks, 'children') { |children|
  children.each { |child|
    puts child['url']
  }
}

