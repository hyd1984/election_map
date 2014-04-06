class Elector
ELECTOR_NAME=["蔡英文","馬英九","宋楚瑜"]
ELECTOR_COLOR=["green","blue","orange"]
ELECTOR_ICON=
['http://upload.wikimedia.org/wikipedia/zh-min-nan/thumb/b/bb/DPP_Logo.svg/473px-DPP_Logo.svg.png',
'http://en.wikipedia.org/wiki/File:Blue_Sky_White_Sun.png',
'http://en.wikipedia.org/wiki/File:People_First_Party_flag.svg']
def initialize(area,latitude,longtitude,electors,valid,invalid,vote,unvote,out,remain,total)
@electors=Array.new
@area=area
electors.each do |element|
@electors << element.to_i
end
@valid=valid.to_i
@invalid=invalid.to_i
@vote=vote.to_i
@unvote=unvote.to_i
@out=out.to_i
@remain=remain.to_i
@total=total.to_i
@latitude=latitude.to_f
@longtitude=longtitude.to_f
end
def area; @area; end
def electors; @electors; end
def valid; @valid; end
def invalid; @invalid; end
def vote; @vote; end
def unvote; @unvote; end
def out; @out; end
def latitude; @latitude; end
def longtitude; @longtitude; end
def remain; @remain; end
def total; @total; end
def win_number; @electors.max; end
def win_index; @electors.find_index(@electors.max); end
def win_name; ELECTOR_NAME[@electors.find_index(@electors.max)]; end
def win_icon; ELECTOR_ICON[@electors.find_index(@electors.max)]; end
end
