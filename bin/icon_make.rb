#!/usr/bin/env ruby

sizes = [
  29,
  40,
  60,
  76
]

rates = [1,2,3]

input = "icon.png"

Dir.mkdir("icons") unless File.exists?("icons")

rates.each do |rate|
  sizes.each do |size|
    `sips -Z #{size * rate} #{input} --out icons/icon#{size}@#{rate}.png`
  end
end
