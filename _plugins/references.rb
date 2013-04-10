# references.rb: jekyll markdown references plugin
#
# add this file to your _plugins directory (create it if needed)
# create a file (exactly) named _references.md in your Jekyll site root,
# then add your markdown reference-style link definitions to it.
# for example:
#   [jsshaper]: http://jsshaper.org  "an extensible framework for JavaScript syntax tree shaping"
#
# you can now reference these links in any markdown file
# for example:
#   You should [check out JSShaper][jsshaper]
 
module Jekyll
  module Convertible
    alias old_read_yaml read_yaml
    @@refs_content = nil
 
    def read_yaml(base, name)
      # loads file, sets @content, @data
      old_read_yaml(base, name)
 
      # only alter markdown files
      return unless converter.instance_of? MarkdownConverter
 
      # read and cache content of _references.md
      if @@refs_content.nil?
        refs_path = File.join(site.source, "_references.md")
        @@refs_content = if File.exist?(refs_path) then File.read(refs_path) 
                         else "" end
      end
 
      # append content of _references.md, whatever it is
      @content += "\n" + @@refs_content
    end
  end
end
