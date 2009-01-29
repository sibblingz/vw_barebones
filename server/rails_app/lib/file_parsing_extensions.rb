class String
  #FIXME - this needs to be helper functions
  def remove_comments
    match_data = /\/\/.*$/.match( self )
    if match_data
      return match_data.pre_match
    else
      return self
    end
  end
  
  def remove_comments!
    match_data = /\/\/.*$/.match( self )
    if match_data
      self.slice!( match_data.begin(0)..-1 )
    end
  end
  
  def is_dialogue_text_line?
    /^\s+/.match( self )
  end

  def is_dialogue_node_name?
    !self.is_dialogue_text_line?
  end
  
  def get_node_name
    self.strip
  end
  
  def get_to_node_name
    self.split('|').last.strip
  end
  
  def get_dialogue_text
    self.split('|').first.strip
  end
end
