require 'fog'

module EbsSnapshotter

  class Snapshotter

    def initialize(config_path, volume_id)
      @volume_id = volume_id
      @aws_config = YAML::load(File.open(config_path))
    end

    def snapshot
    end

    private

      def connection
        @connection ||= Fog::Storage.new(@aws_config[:fog])
      end

  end

end