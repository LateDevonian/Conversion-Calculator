class Allergy

    allergies = [:allergen]

    def initialize(allergies)
        allergies.each
        
        @allergies = [
            'eggs' =>  1,
            'peanuts' => 2,
            'shellfish' => 4,
            'strawberries' =>  8,
            'tomatoes' => 16,
            'chocolate' => 32,
            'pollen' => 64,
            'cats' => 128
        ]
    end

    def allergic_to?(allergen)
        allergen = allergen.downcase
        @allergies.key?(allergen)
    end 

    def list(allergen_no)
    # allergies.list
    # => ['peanuts', 'chocolate']

    end


end
