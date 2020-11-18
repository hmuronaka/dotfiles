#!/usr/bin/env ruby
require 'pathname'

def find_dir(extension)
  `mdfind -onlyin ~ -name "#{extension}" | grep ".#{extension}$"`
end

def is_subdir?(parents, target)
  parents.each { |parent|
    return true if target.start_with?(parent)
  }
  return false
end

def get_xcodeprojs
  xcworkspaces = find_dir('.xcworkspace').split(/\n/)
  xcprojs = find_dir('.xcodeproj').split(/\n/)
  xcworkspaces_dir = xcworkspaces.map { |i| Pathname(i).dirname.to_s }
  xcprojs.delete_if { |i|  is_subdir?(xcworkspaces_dir, i) }
  [xcworkspaces, *xcprojs]
end

puts get_xcodeprojs


