require './lib/caesar.rb'
describe "Caesar Cipher" do
    describe "#encrpt" do
        it "encrypts single letters" do
            expect(caesar_cipher("A", 1)).to eql("B")
        end
        it "encrypts words" do
            expect(caesar_cipher("Aaa", 1)).to eql("Bbb")
        end
        it "encrypts phrases" do
            expect(caesar_cipher('Hello, World!', 5)).to eql('Mjqqt, Btwqi!')
        end
        it "encrypts with negative keys" do
            expect(caesar_cipher('Mjqqt, Btwqi!', -5)).to eql('Hello, World!')
        end
        it "wraps" do
            expect(caesar_cipher('Z', 1)).to eql('A')
        end
        context "with large keys" do
            it { expect(caesar_cipher('Hello, World!', 75)).to eql('Ebiil, Tloia!') }
        end
    end
end