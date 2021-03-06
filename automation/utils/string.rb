class String
	def escape
		"\"#{self.to_s}\""
	end

  def join(elements = [])
    File.join(self,elements)
  end

	def to_absolute()
		File.expand_path(self)
	end

  def remove_template_name
    self.gsub(File.extname(self),'')
  end

  def name_without_template_extension
    return remove_template_name
  end

  def base_name_without_extension
    File.basename(self,'.*')
  end

  def as_win_path
    path = self.gsub(/\\/, "/")
    path = path.gsub(/\s/, "\\ ")
    path = path.gsub(/\(/, '\(')
    path = path.gsub(/\)/, '\)')
  end

  def win_path
    self.gsub(/\//, "\\") 
  end
end
