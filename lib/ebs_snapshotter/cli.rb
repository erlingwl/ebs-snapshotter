# encoding: utf-8

require 'thor'

module EbsSnapshotter
  class CLI < Thor
    include Thor::Actions


    method_option :config_path, :type => :string,  :required => true, :desc => "Path to fog config i.e. ~/aws.yml"
    method_option :volume_id, :type => :string,  :required => true, :desc => "ID of the EBS volume to snapshot"

    desc 'snapshot', "Snapshots an EBS volume."
    def snapshot
      snapshotter = EbsSnapshotter::Snapshotter.new(options[:config_path], options[:volume_id])
      snapshotter.snapshot
    end
    
  end

end