require 'rspec'
require_relative '../rspec_data_generator/data_generator'
#example from effective rspec, get the tests working on a class

RSpec.describe DataGenerator do

  d_gen = DataGenerator.new

  def be_a_boolean
    match(eq(true)|eq(false))
  end

  it 'generates boolean values' do
    value = d_gen.boolean_value
    expect(value).to be_a_boolean
  end

  def be_a_date_before_2000
    #needs to be rewritten to test the date
    #use be_a(klass) matcher with "be < value" matcher
    #currently matches but doesn't work for later tests
    #this is obscured to me...internet has failed me
    #
    match(be_between(1950,2000))
  end

  it 'generates dates before January 1st, 2000' do
    #this needs to push the date validation into the def
    #it works for this test but cannot be reused for later shape test
    value = d_gen.date_value
    expect(value.year).to be_a_date_before_2000
  end

  def be_an_email_address
    match(/^.+\@.+\..+$/)
  end

  it 'generates email addresses' do
    value = d_gen.email_address_value
    expect(value).to be_an_email_address
  end

  def match_the_shape_of_a_user_record
    #does not work. it's all about the syntax.
    #come back to this later
    match(
      a_hash_including(
      :active => be_a_boolean,
      :date_of_birth => be_a_date_before_2000,
      :email_address => be_an_email_address
     )
    )
  end

  xit 'generates user records' do
    #does not work...come back to it later
    user = d_gen.user_record
    expect(user).to match_the_shape_of_a_user_record
  end

  def all_match_the_shape_of_a_user_record
    #cobine the 'all' matcher and match_the_shape_of_a_user_record' here
  end

  xit 'generates a list of user records' do
    users = d_gen.users(4)
    expect(users).not_to be_nil
    #does not work come back to it when i've worked out the date shit
    expect(users).to all_match_the_shape_of_a_user_record
  end
end
