require 'rspec'
require_relative '../estado'

RSpec.describe Brasil::Estado do
  context '.siglas' do
    it "returns an array of siglas" do
      expect(Brasil::Estado.siglas).to eq ["AC", "AL", "AP", "AM", "BA", "CE", "DF", "ES", "GO", "MA", "MT", "MS", "MG", "PA", "PB", "PR", "PE", "PI", "RJ", "RN", "RS", "RO", "RR", "SC", "SP", "SE", "TO"]
    end
  end
end