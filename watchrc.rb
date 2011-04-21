watch 'src/(.*)\.php' do |match|
    phpunit match[0]
    puts match[1]
end

def phpunit file
    system('phpunit -c app') if File.exists?(file)
end
