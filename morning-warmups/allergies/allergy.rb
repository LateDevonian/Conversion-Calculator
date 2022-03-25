class Allergy

    Allergies = { 
        'eggs' =>  1,
        'peanuts' => 2,
        'shellfish' => 4,
        'strawberries' =>  8,
        'tomatoes' => 16,
        'chocolate' => 32,
        'pollen' => 64,
        'cats' => 128
    }

    def allergic_to?(allergen)
        allergen = allergen.downcase
        Allergies.key?(allergen)
    end 

    def describe_allergies(allergen_no)
        if allergen_no == 0
          "invalid score"
        else
            score = 

        end

    end


end
