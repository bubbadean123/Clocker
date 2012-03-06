class DirChecker

  def initialize(path)
    @path = path
  end

  def path_exists?
    unless File.directory(@path)
      puts "Directory does not exist"
    else
      puts "Using #{@path} as save directory"
    end
  end

end
