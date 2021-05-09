require 'rspec'
require_relative '../openfile.rb'
require 'byebug'


RSpec.describe Directories do


    let(:diry) { Directories.new }
    mypath = "knownpath"

    describe 'it looks for a file in a directory' do

        it 'checks to see if the directory is empty' do
        result = diry.check_empty(mypath)
        expect(result).to be(false)
        end

        it 'checks to see if the directory exists' do
            result = diry.check_exists(mypath)
            expect(result).to be(true)
         end

        it 'correctly rejects no path' do
            result = diry.check_exists("nopath/opath")
            expect(result).to be(false)
         end

         it 'gets contents of path' do
            result = diry.get_contents(mypath)
            expect(result).to include("apath.rb")
         end
    end
end
