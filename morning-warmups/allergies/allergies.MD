Allergies

An allergy test produces a single numeric score which contains the information about all the allergies the person has (that they were tested for).

The list of items (and their value) that were tested are:

    eggs (1)
    peanuts (2)
    shellfish (4)
    strawberries (8)
    tomatoes (16)
    chocolate (32)
    pollen (64)
    cats (128)

So if Tom is allergic to peanuts and chocolate, he gets a score of 34.

Write a program that, given a person's score can tell them

a) whether or not they're allergic to a given item, and b) the full list of allergies.

allergies = Allergies.new(34)
allergies.allergic_to?('chocolate')
=> true
allergies.allergic_to?('cats')
=> false
allergies.list
=> ['peanuts', 'chocolate']

# class JM 
#     constructor(score) {
#         this.score = score;
#         this.allergyList = [
#            {} name: 'cats', value: 128},
#            {}
#         ]
#     }
#     findMatchingAllergies(score, allergyList, matches = [] {
#         if score === 0 || allergergyList.length === 0 {
#             return matches;
#         }
#         const [allergy, ...remainingAllergies] = allergyList;
#         if (score >= allergy.value ){
#             return this.findMatchingAllergies(remainingScore, remainingAllergies, [allergy.name, ...matches])
#         }
#         if (score < allergy.vaule) {
#             return this.findMatchingAllergies(score, remainingAllergies, matches)
#         }
#         list(){
#             return this.findMathcingAllergies(this.score, this.allergyList)

#         }
#         is AlleergicTo(allergen {
#             return this.list().includes(allergen)
#         }
    # })
# end
