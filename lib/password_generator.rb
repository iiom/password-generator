require 'yaml'

SPECIAL_CHARS = ["!", "@", "#", "$", "%", "^", "&", "*", "(", ")", "-", "_", "=", "+", "|", "/", "?", ".", ",", ";", ":", "~", "`", "[", "]", "{", "}", "<", ">"]
current_path = File.dirname(__FILE__)
CONFIG_PATH = current_path + '/config/config.yaml'

config_file = YAML.load(File.read(CONFIG_PATH))

arr = [*"a".."z"]
length = config_file[:length]
config_file[:numbers] ? arr << [*"0".."9"] : nil
config_file[:upercase] ? arr << [*"A".."Z"] : nil
config_file[:special_characters] ? arr << [*SPECIAL_CHARS] : nil

puts Array.new(length){arr.flatten.sample}.join
