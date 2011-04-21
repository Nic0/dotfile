watch '^src/(.*)Bundle/Tests/(.*)\.php$' do |match|
    phpunit match[0]
end

#watch '^src/(.*)Bundle/(.*)\.php$' do |match|
    #file = "src/#{match[1]}Bundle/Tests/#{match[2]}Test.php"
    #phpunit file
#end

def phpunit file
    system("phpunit -c app #{file}") if File.exists?(file)
end
