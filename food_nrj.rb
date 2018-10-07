#une table hash par plat, contenant les indices nrjetiques des aliments
WELSH = Hash.new
WELSH["plat"] =  "Welsh"
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.3
=begin
CALORIES = Hash.new
CALORIES["Lipides"] = 9
CALORIES["Glucides"] = 4
CALORIES["Protéines"] = 4

CALORIES.each do |key, value|
    puts "un #{key} correspond à #{value} calories"
end
=end
def weight_watchers(meal)
    cal = Hash.new
    cal[:lipides] = 9
    cal[:glucides] = 4
    cal[:protéines] = 4
    
    lipides = meal["Lipides"] * cal[:lipides]
    glucides = meal["Glucides"] * cal[:glucides]
    protéines = meal["Protéines"] * cal[:protéines]
    sum = lipides + glucides + protéines
    puts "Une portion de WELSH = #{sum} calories"
end
weight_watchers(WELSH)
#declaration d'un hash menu qui contient comme éléments d'autre hash "plat"
menu = Hash.new
menu["welsh"] = welsh = {
    "lipides" => 9,
    "glucides" => 4,
    "protéines" => 4
} 
menu["frites"] = frites = {
    "lipides" => 15,
    "glucides" => 41,
    "proteines" => 3.4
}
menu["biere"] = biere = {
    "lipides" => 0,
    "glucides" => 25,
    "proteines" => 4
}
puts frites
# fonction qui calcul le nombre de calorie a partir de tout les plats qu'on lui rentre en paramettre

def  meal_weight_watchers(full_meal)
    cal = Hash.new
    cal[:lipides] = 9
    cal[:glucides] = 4
    cal[:protéines] = 4
    puts full_meal["lipides"]

    lipides = full_meal["lipides"] * cal[:lipides]
    glucides = full_meal["glucides"] * cal[:glucides]
    protéines = full_meal["protéines"] * cal[:protéines]

    sum_meal = lipides + glucides + protéines

    puts "votre repas contient = #{sum_meal} calories"

end
meal_weight_watchers(welsh)

def calcul_menu(double_hash)
    puts "=======> contenu du menu : "
    puts double_hash
    puts "---------=============== ---------"
    double_hash.each do |meal|
        puts "MEAL !!!!!!!!!!!!!!!!"
        puts meal
        meal.each do
            puts value   
        end
    end
end
calcul_menu(menu)

