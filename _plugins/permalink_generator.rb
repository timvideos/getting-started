module Jekyll
  class Page

    def permalink
      return if data.nil? or data['no_permalink']
      if site.config['relative_permalinks']
        File.join(@dir, data['permalink'])
      elsif data['permalink']
        data['permalink']
      elsif site.config['auto_permalinks']
        if data['category'].nil?
          "#{basename.downcase}/"
        else
          "#{data['category'].downcase}/#{basename.downcase}/" 
        end
      else
        nil
      end
    end

  end
end
