# frozen_string_literal: true

RSpec.describe Interscript do
  context "bgnpcgn-rus-Cyrl-Latn-1947" do
    it "convert internal test text" do
      system = YAML.load_file "maps/bgnpcgn-rus-Cyrl-Latn-1947.yaml"
      system["tests"].each do |test|
        result = Interscript.transliterate "bgnpcgn-rus-Cyrl-Latn-1947", test["source"]
        expect(result).to eq test["expected"]
      end
    end
  end
end
