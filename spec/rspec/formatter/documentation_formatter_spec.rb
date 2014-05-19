require 'rspec/formatter/documentation_formatter'

describe "DocumentationFormatter" do
 let(:formatter) { Class.new { include DocumentationFormatter } }
end
