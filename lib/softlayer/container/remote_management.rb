module Softlayer
  module Container
    module RemoteManagement
      autoload :PmInfo, 'softlayer/container/remote_management/pm_info'
      autoload :SensorReading, 'softlayer/container/remote_management/sensor_reading'
      autoload :SensorReadingsWithGraphs, 'softlayer/container/remote_management/sensor_readings_with_graphs'
      autoload :Graphs, 'softlayer/container/remote_management/graphs'
    end
  end
end
