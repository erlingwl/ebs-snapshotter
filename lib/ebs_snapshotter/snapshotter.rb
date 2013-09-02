require 'fog'

module EbsSnapshotter

  class Snapshotter

    def initialize(config_path, volume_id)
      @volume_id = volume_id
      @aws_config = YAML::load(File.open(config_path))
    end

    def snapshot
      new_snapshot = connection.snapshots.new
      new_snapshot.description = "#{@volume_id} - #{Time.now}"
      new_snapshot.volume_id = @volume_id
      saved = new_snapshot.save
      raise "Failed to save snapshot for #{@volume_id}" unless saved 
    end

    private

      def connection
        @connection ||= Fog::Compute.new(@aws_config[:fog])
      end

  end

end