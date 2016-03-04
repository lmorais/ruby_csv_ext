require 'spec_helper'

describe RubyCsvParser do

  it 'should create a new CSV object' do
    Parser::Csv.new("filename.csv")
  end

end
