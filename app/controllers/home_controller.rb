class HomeController < ApplicationController
  ETHEREUM_TOKEN_PATH = "#{Dir.pwd}/contract/contract.sol"
  GANACHE_URL = "HTTP://127.0.0.1:7545"
  
  def index
    @client = Ethereum::HttpClient.new(GANACHE_URL)
    @contract = Ethereum::Contract.create(file: ETHEREUM_TOKEN_PATH, client: @client)
    @contract.deploy_and_wait()
  end
end
