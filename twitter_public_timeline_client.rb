# original tweet located at http://twitter.com/Abica/status/3379588290
#
# this program is a twitter public timeline client that will pull the public timeline once per second
#
# to run it either paste into irb or ruby filename.rb
#
# original tweet golfed to 140 chars
#
# this version golfed to 113 characters
loop{puts `curl -L bit.ly/UsepO`.scan(%r{<(screen_name|text)>(.*?)</\1>}).reverse.map{|v,b|v[/text/]? b:"\n@"+b}}
