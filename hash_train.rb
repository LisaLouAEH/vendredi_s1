tab1 = ["carotte", "salade", "crevette"]
tab2 = ["orange", "vert", "rose"]
hash = {}

i = 0
while i < tab1.size
    hash.store(tab1[i], tab2[i])
    i += 1
end
print hash
puts "-----------------------"
=begin
hash2 = {}
puts "name :"
name = gets.chomp
puts "phone number :"
phone = gets.to_i
hash2.store(name, phone)
puts hash2
=end

#declarer qu'un tableau est finalement un hash

valeur1 = "truc"
valeur2 = "chose"
valeur3 = "machin"
tab_exemple = [valeur1, valeur2, valeur3]
puts "ceci est le contenu d'un tableau exemple : "
print tab_exemple
puts "-----------------------------------------"
puts "ceci est le contenu du hash crée a partir du tableau précédent"
#tab_exemple = Hash.new
#puts tab_exemple
hash_exemple = Hash.new
hash_exemple["key1"] = "correct !"
hash_exemple["key2"] = "wrong !"
hash_exemple["key3"] = "both !"
# puts hash_exemple["key3"] + hash_exemple["key1"]
puts hash_exemple
hash_exemple.each do | value |
    puts value
end
hash_exemple2 = Hash.new
hash_exemple2 = {
    21 => 123456789,
    22 => 789456123,
    23 => 020103040506,
    24 => "valeur x",
    25 => true,
    26 => false,
}
puts hash_exemple2
hash_exemple2[7] = "abcd"
puts "rajout #{hash_exemple2[7]} au tableau précédent"
puts hash_exemple2


puts "ceci est une string" + hash_exemple2[24]

hash_exemple2.each do |key, value|
    puts "#{key} --> #{value}"
end
