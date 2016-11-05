require './database.rb'
require 'open-uri'
require 'nokogiri'
require 'kconv'

class Race < ActiveRecord::Base
end

url_list = Array.new
url_base = 'http://db.netkeiba.com'

list_url = 'http://db.netkeiba.com/?pid=horse_hitchart'
list_html = open(list_url){|f|
  f.read
}

list_doc = Nokogiri::HTML.parse(list_html.toutf8, nil, 'utf-8')
list_doc.css('td > a').each{|horse_link|
  horse_url = url_base + horse_link[:href]
  url_list.push(horse_url)
}

sleep(1)

url_list.each{|url|
  html = open(url){|f|
    f.read
  }
  
  doc = Nokogiri::HTML.parse(html.toutf8, nil, 'utf-8')
  doc.css('.cate_bar > h2:nth-child(1)').text.match(/^(.+)の/)
  horse_name = $1
  
  doc.css('table.db_h_race_results > tbody > tr').each{|inline|
    date = inline.css('td:nth-child(1)').text
    kaisai = inline.css('td:nth-child(2)').text
    race_name = inline.css('td:nth-child(5)').text
    umaban = inline.css('td:nth-child(9)').text
    odds = inline.css('td:nth-child(10)').text
    ninki = inline.css('td:nth-child(11)').text
    chakujun = inline.css('td:nth-child(12)').text
    kishu = inline.css('td:nth-child(13)').text.strip
    kinryo = inline.css('td:nth-child(14)').text
    kyori = inline.css('td:nth-child(15)').text
    baba = inline.css('td:nth-child(16)').text
    taimu = inline.css('td:nth-child(18)').text
    chakusa = inline.css('td:nth-child(19)').text
    tsuka = inline.css('td:nth-child(21)').text
    agari = inline.css('td:nth-child(23)').text
    bataiju = inline.css('td:nth-child(24)').text
    kachiuma_or_nichakuba = inline.css('td:nth-child(27)').text
    
    outline = {
      :horse_name => horse_name,
      :date => date,
      :kaisai => kaisai,
      :race_name => race_name,
      :umaban => umaban,
      :odds => odds,
      :ninki => ninki,
      :chakujun => chakujun,
      :kishu => kishu,
      :kinryo => kinryo,
      :kyori => kyori,
      :baba => baba,
      :taimu => taimu,
      :chakusa => chakusa,
      :tsuka => tsuka,
      :agari => agari,
      :bataiju => bataiju,
      :kachiuma_or_nichakuba => kachiuma_or_nichakuba
    }
    Race.create(outline)
  }
  
  sleep(1)
}
