=begin
Le but est de créer un hash qui contiendra une base de donnée de repas, 
avec les apports nutritifs associés (glucides, lipides et protéines).

puts "Indice calorique du plat 'Welsh' :"
WELSH = Hash.new
WELSH["plat"] =  "Welsh"
WELSH["Lipides"] = 38.4
WELSH["Glucides"] = 18.3
WELSH["Protéines"] = 36.3

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
=end

#declaration d'un hash 'menu' qui contient comme éléments d'autre hash 'aliment'
@menu = Hash.new
    @menu["welsh"] = welsh = {
        "lipides" => 38.4,
        "glucides" => 18.3,
        "protéines" => 36.3,
        "price" => 15
    } 
    @menu["frites"] = frites = {
        "lipides" => 15,
        "glucides" => 41,
        "protéines" => 3.4,
        "price" => 4
    }
    @menu["biere"] = biere = {
        "lipides" => 0,
        "glucides" => 25,
        "protéines" => 4,
        "price" => 5
    }

# fonction qui calcul le nombre de calorie a partir de tout les plats qu'on lui rentre en paramettre
def  weight_watchers(full_meal)
    cal = Hash.new
    cal[:lipides] = 9
    cal[:glucides] = 4
    cal[:protéines] = 4
    #puts full_meal["lipides"]

    lipides = full_meal["lipides"] * cal[:lipides]
    glucides = full_meal["glucides"] * cal[:glucides]
    protéines = full_meal["protéines"] * cal[:protéines]
    

    sum_meal = lipides + glucides + protéines
    puts "un aliment contient = #{sum_meal} calories"
    return sum_meal

end


def meal_weight_watcher(double_hash)
    total_cal = 0
#ajoute la sommes des calories de chaque aliment dans la variable 'total_cal'
    double_hash.values.each do |meal|
        total_cal = total_cal + weight_watchers(meal)
    end

    puts "votre repas compte un total de #{total_cal} calories."
    price = 0
    double_hash.values.each do |meal|
        price = price + meal["price"]
    end
    puts "Et vous aura couté = #{price } $"
    
end

def perform
puts "-------------------------------------------"
   puts "     Weight watchers    "
puts "-------------------------------------------"
puts "Dans votre menu du JOUR :"
    meal_weight_watcher(@menu)
end
perform