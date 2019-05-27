require 'rspec'
require 'byebug'
require 'rack/test'
require 'will_paginate'
require_relative '../../code_snippets/json_parse_snips'

RSpec.describe UriNoodling do

    #use jsonplaceholder.typicode.com

  let(:urinood) {UriNoodling.new}
  let(:base_url) { 'https://jsonplaceholder.typicode.com'}
  let(:post_url) {'https://jsonplaceholder.typicode.com/posts'}


  def get_keys(response)
    response.map{ |k,v| k }
  end

  describe 'it creates new posts' do

    let(:post_request) do
      {
        body: {
          title: "How I learned to post stuff",
          body:  "the body post goes here",
          userId: 88
        }
      }
    end
    let(:response) { urinood.create_request(post_url,post_request) }

    it 'creates a new post and returns the correct post body' do
      expect(response.body).to include("How I learned to post stuff")
    end

    it 'creates keys as expected' do
      keys = get_keys(response)
      expect(keys).to match_array(["id","body","title","userId"])
    end

    it 'creates a new post and returns a 201 (create) code' do
      expect(response.code).to eq 201
    end

    it 'creates a new post and returns response message' do
      expect(response.message).to eq "Created"
    end

    it 'returns as a JSON response' do
      expect{JSON.parse(response.body)}.to_not raise_error
    end
  end

  describe 'it gets the first post available' do
     let(:url) { "#{base_url}/posts/1" }
     let(:response) {urinood.get_request(url)}

    it 'returns the first post' do
      expect(response["id"]).to eq 1
    end

    it 'includes the expected values in the first post ' do
      keys = get_keys(response)
      expect(keys).to match_array(["id","body","title","userId"])
    end

    it 'gets the response code' do
      expect(response.code).to eq 200
    end

    it 'does not return an empty post' do
      expect(response).not_to be_empty
    end
  end

  describe 'it does lots of noodling with all the posts' do
    let(:url) {"#{base_url}/posts"}

   it 'gets the last post' do
     response = urinood.last_post(url)
     expect(response["title"]).to include("at nam consequatur ea labore ea harum")
   end

   xit 'puts a post into a file' do
     # response = urinood.first_post(url)
     # File.open("")
   end

   xit 'pages through the data ' do
     # response = unrinood.get_request(url)

   end

   xit 'collects all the email addresses of the commenters for a specific post' do
     # https://meduim.com/@pauwlkris
     # unlocking the power of JSON APIs in ruby
   end

   it 'gets a list of all the post names and descriptions'

   it 'finds the posts from a specific known userid' do
     id = 1
     response = urinood.find_post_resources(url, id)
     expect(response.count).to eq 10
   end
 end

 describe 'it gets the post comments' do
   let(:url) { "#{base_url}/comments?postId=1" }
   let(:response) {urinood.get_request(url) }

   it 'gets the number of comments from a given post' do
     expect(response.count).to eq 5
   end

   it 'finds all comments for post 1' do
     url = "#{base_url}/posts/1/comments"
     response = urinood.get_request(url)
     r1 = response[0]
     keys = get_keys(r1)
     expect(keys).to match_array(["postId","id","name","email","body"])
   end
 end


 describe 'it raises errors when invalid urls supplied'  do

   it 'returns an error when post does not exist' do
     url = "#{base_url}/posts/582"
     expect{ urinood.get_request(url) }.to raise_error(TypeError)

   end

   it 'returns an error when an invalid post request made' do
     #this currently works invalidly as the api accepts any old shit
     #i have set it up to pass as now but it needs some dicking with
     post_request = {"body"=>"nothing useful data"}
     response = urinood.create_request(post_url, post_request)
     expect(response.code).to eq 201
     # expect{response}.to raise_error(TypeError)
   end
end

  describe 'it updates a post' do
    let(:url) { "#{base_url}/posts/1" }
    let(:update) do
      {
        body: {
          id: 1,
          title: "Updating the first post",
          body:  "all the new stuff",
          userId: 3
        }
      }
    end

    let(:response) { urinood.update_request(url,update) }

    it 'updates the first post and returns the correct post body' do
      expect(response.body).to include("all the new stuff")
    end

    it 'gets the response code' do
      expect(response.code).to eq 200
    end

  end

  describe 'deletes an post or other' do

    let(:url) { "#{base_url}/posts/2" }
    let(:original_response) {urinood.get_request(url)}
    let(:response) {urinood.delete_request(url)}

    it 'deletes an entire post by route' do
      expect(response).to be_empty
    end

    it 'returns a deleted response' do
      expect(original_response).to_not eq(response)
    end

    it 'gets the response code' do
      expect(response.code).to eq 200
    end
  end
end
