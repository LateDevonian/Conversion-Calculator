require 'rspec'
require_relative '../../../makeband/lib/artist'
require 'byebug'

RSpec.describe Artist do

  let(:a) { Artist.new }

  def pop_data(artist)
    data = a.add_artist(artists)
  end


  describe 'modify and search artists' do

    let(:test) { ["hash"]}

    let(:artists){
      [
        {
          id: 1,
          names: ['Melanie Chisholm', 'Mel C','Sporty Spice'],
          instrument: ['vocals', 'xylophone'],
          dob: '10/10/1977'
        },
        {
          id: 2,
          names: ['Laars','Napster'],
          instrument: ['drums'],
          dob: '15/01/1968'
        },
        {
          id: 3,
          names: ['David Bowie', 'Ziggy', 'Ziggy Stardust', 'Thin White Duke'],
          instrument: ['vocals', 'guitar', 'triange', 'keyboard'],
          dob: '06/12/1956'
        },
        {
          id: 4,
          names: ['David Cassidy'],
          instrument: ['vocals'],
          dob: '06/12/1956'
        },
        {
          id: 49,
          names: ['Murray Head'],
          instrument: ['vocals'],
          dob: '06/12/1946'
        }
        ]
      }
    let(:more_artists) {
      [
        {
          id: 5,
          names: ['Emma Bunton','Baby Spice'],
          instrument: ['vocals'],
          dob: '10/10/1981'
        }
      ]
      }

    describe 'I can add a new artist' do
      xit 'allows me to add one new artist to existing array' do
        ob2 = {
          :dob=>"10/10/1981",
          :id=>5,
          :instrument=>["vocals"],
          :names=>['Emma Bunton','Baby Spice']
        }
        #can't do yet
        result = pop(artists)
        result2 = a.add_artist(more_artists)
        expect(result).to include(ob2)
      end

      it 'allows me to add a list of artists and return them' do
        ob1 = {
          :dob=>"10/10/1977",
          :id=>1,
          :instrument=>["vocals", "xylophone"],
          :names=>["Melanie Chisholm", "Mel C", "Sporty Spice"]
        }

        result = pop_data(artists)
        expect(result).to include(ob1)
      end

      it 'returns a duplicate message in case of same name and dob'
      it 'does not update if there is the same name and dob'
    end

    describe 'I can query the artist by name' do
      it 'find all artists by the name of the first letter' do
        result = pop_data(artists)
        names = a.name_start_with(result, "M")

        expect(names).to include "Murray Head"
        expect(names.count).to eq 3
      end

      xit 'gets all names the artist is referred to by id' do
        result = pop_data(artists)
        allnames = getnames(result, id)

        obj = ['David Bowie', 'Ziggy', 'Ziggy Stardust', 'Thin White Duke']

        expect(allnames).to eq(obj)



      end
      it 'gets all the artists details when given a name'
    end

    describe 'I can add a name to an existing artist' do
      it 'add a name to an existing artist'
      it 'cannot delete a name from an artist'
      it 'checks to see if there is already an artist with the same name and dob'
      it 'does not add the same artist twice'
      it 'allows addition of many spellings'
    end


    describe 'I can add an instrument to an artist' do
      it 'allows me to add an instrument to an artist'
      it 'does not allow me to add a duplicate instrument'
    end
  end
end
