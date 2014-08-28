require 'open-uri'
yml_str = open('https://raw.githubusercontent.com/ExpoTV/Staff-Roster/gh-pages/_data/staff.yml').read;

require 'yaml'
staff = YAML.load(yml_str)

staff.each { |department|
    puts department['name']
    puts '=' * department['name'].length
    department['members'].each { |e|
        # puts e
        print e['name']
        print ' [' + '@' + e['twitter'] + ']'  if e['twitter']
        # print ' ~ ' + 'https://github.com/' + e['github']    if e['github']
        # print ' ~ ' + e['website'] if e['website']
        puts "\n"
    }
    puts "\n"
}
