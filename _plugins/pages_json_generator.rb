# Jekyll plugin for generating a json with pages and url for pages
# 
# Author: Maciej Paruszewski <maciek.paruszewski@gmail.com>
# Source: http://github.com/pinoss
#
# Distributed under the MIT license
# Copyright Maciej Paruszewski 2014

module Jekyll
  class PagesJsonGenerator < Generator
    priority :low
    safe true

    # Generates an pages.json
    #
    # site - the site
    #
    # Returns nothing
    def generate(site)
      require 'json'

      pages = {}
      pages['pages'] = []
      pages['posts'] = []

      site.pages.each { |page| pages['pages'] << { 'basename' => page.basename, 'data' => page.data, 'url' => page.url } }
      site.posts.each { |post| pages['posts'] << { 'slug'     => post.slug,     'data' => post.data, 'url' => post.url } }

      pages_path = File.join(site.config['source'], 'pages.json')
      File.open(pages_path, 'w') do |f|
        f.write(pages.to_json)
      end
    end
  end
end
