require_relative '../db/config'
# require 'byebug'

def percentage(amboi)
  senator = Legislator.where(gender: amboi, title: "Sen")

  total_sen = Legislator.all.count
  percentage_sen = (senator.count.to_f/total_sen.to_f)*100
  puts "The percentage of #{amboi} in Senators: #{total_sen} #{percentage_sen}%"

  representativeee = Legislator.where(gender: amboi, title: "Rep")

  total_rep = Legislator.all.count
  percentage_rep = (representativeee.count.to_f/total_rep.to_f)*100
  puts "The percentage of #{amboi} in Representative: #{total_rep} #{percentage_sen}%"
end

def display_all_shit(tinggalmana)
  puts "Senators: "
  puts "+++++++++++++++++++++++++++++++++++++"
  Legislator.where(title: "Sen", state: tinggalmana).order(lastname: :asc).each do |xmen|
    puts "#{xmen.firstname} #{xmen.lastname} (#{xmen.party})"
  end

  puts "Representatives: "
  puts "+++++++++++++++++++++++++++++++++++++"
  Legislator.where(title: "Rep", state: tinggalmana).order(lastname: :asc).each do |sailormoon|
    puts "#{sailormoon.firstname} #{sailormoon.lastname}  (#{sailormoon.party})"
  end
end

def taylorswift
  najib = Legislator.uniq.pluck(:state)

  array_of_count = []

  najib.each do |state|
    array_of_count << [state, Legislator.where(state: state).count]
  end

  najib = array_of_count.sort {|a,b| b[1] <=> a[1]}
  najib.map!{|state| state[0]}

  najib.each do |state|
    sen = Legislator.where(title: "Sen", state: state).count
    rep = Legislator.where(title: "Rep", state: state).count
    puts "#{state}: #{Legislator.where(title: "Rep", state: state).count}" + " Sen |" + "#{Legislator.where(title: "Sen", state: state).count}" + " Rep"
  end
end

def nak_semua
  sen = Legislator.where(title: "Sen").count.to_s
  puts "Senators:" + sen

  rep = Legislator.where(title: "Rep").count.to_s
  puts "Representatives:" + rep
end

def hapus!

  Legislator.destroy_all(in_office: 0)


end



# percentage('M')
# display_all_shit('NY')
# taylorswift
nak_semua
# hapus!
