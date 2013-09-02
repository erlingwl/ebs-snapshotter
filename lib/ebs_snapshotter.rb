require 'logger'

LIBRARY_PATH = File.join(File.dirname(__FILE__), 'ebs_snapshotter')

require File.join(LIBRARY_PATH, 'version') 
require File.join(LIBRARY_PATH, 'snapshotter') 
require File.join(LIBRARY_PATH, 'cli') 

module EbsSnapshotter

  $stdout.sync = true

  $log = Logger.new($stdout)
  $log.level = Logger::INFO

end