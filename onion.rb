require 'yaml'

emoji = {
  'title' => 'onion',
  'emojis' => []
}

ARGF.each do |path|
  name = path.sub(/^\.\//, '').sub(/\.gif/, '')
  emoji['emojis'] << {
    'name' => name.strip,
    'src' => "https://raw.githubusercontent.com/nanzhong/onion-emoji/master/#{path.strip}"
  }
end

puts YAML.dump(emoji)
