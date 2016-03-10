class Softlayer::Fixtures
  def self.load
    $database = {}
    $database[:relationships] = []
    fixtures = Dir["#{fixtures_dir}/**/*.yml"].map do |f|
      fixtures = YAML.load(ERB.new(File.read(f)).result)
      fixtures.each do |key,objects|
        objects.each do |k, object|
          # instantiate model
          model = key.to_s.constantize.new
          ## set attributes
          model = set_attributes(k, object, model)
          ## add to $database
          save_on_database(k,model)
        end
      end
    end
    set_relationships
  end

  def self.find_object(type, id)
    $database[type][id]
  end

  def self.fixtures_dir
    File.join(Dir.pwd, 'test/softlayer/fixtures/')
  end

  def self.save_on_database(key, model)
    class_name = model.class.name
    if $database.has_key?(class_name)
      $database[class_name][key] = model
    else
      $database[class_name] = {}
      $database[class_name][key] = model
    end
  end

  def self.set_attributes(key, object, model)
    if object.has_key?('attributes')
      object['attributes'].each_pair do |attr, value|
        model.send("#{attr}=", value)
      end
    end

    if object.has_key?('relationships')
      relationships = []
      object['relationships'].each do |relation, data|
        $database[:relationships].push({:id => key, :type => model.class.name, :relationship => relation, :data => data})
      end
    end
    model
  end

  def self.set_relationships
    $database[:relationships].each do |row|
      relationships = []
      relation = row[:relationship]
      data = row[:data]
      model = find_object(row[:type],row[:id])
      if data.class == Array
        data.each do |d|
          relationships.push(find_object(d['type'], d['id']))
        end
        model.send("#{relation}=", relationships)
      else
        relationships.push(find_object(data['type'], data['id']))
        model.send("#{relation}=", relationships.first)
      end
    end
  end
end
