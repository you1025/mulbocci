require "./mulbocci"

describe "Multi Bocci Test" do

  describe "Mulbocci" do
    describe "#initialize" do

      context "with no argument" do
        it {expect(Mulbocci.new.size).to eq(2)}
        it {expect(Mulbocci.new.at(1)).to eq(0)}
        it {expect(Mulbocci.new.at(2)).to eq(1)}
      end

      context "with initials(size=0)" do
        it {expect {Mulbocci.new([])}.to raise_error(RuntimeError)}
      end

      context "with initials(size=1)" do
        it {expect {Mulbocci.new([1])}.to raise_error(RuntimeError)}
      end
    end

    describe "#new_with_size" do
      context "with no argument" do
        it {expect(Mulbocci.new_with_size.size).to eq(2)}
      end

      describe "with 2" do
        let(:fib) {Mulbocci.new([0, 1])}
        let(:fib_with_size) {Mulbocci.new_with_size(2)}

        context "size" do
          it {expect(fib.size).to eq(fib_with_size.size)}
        end
        context "#at 1" do
          it {expect(fib.at(1)).to eq(fib_with_size.at(1))}
        end
        context "#at 2" do
          it {expect(fib.at(2)).to eq(fib_with_size.at(2))}
        end
      end

      context "with 1" do
        it {expect {Mulbocci.new_with_size(1)}.to raise_error(RuntimeError)}
      end

      context "with 0" do
        it {expect {Mulbocci.new_with_size(0)}.to raise_error(RuntimeError)}
      end

      context "with -1" do
        it {expect {Mulbocci.new_with_size(-1)}.to raise_error(RuntimeError)}
      end
    end
  end

  describe "Fibonacci" do
    let(:fib) {Mulbocci.new([0, 1])}

    describe "#at" do
      context "with 0" do
        it {expect {fib.at(0)}.to raise_error(RuntimeError)}
      end

      context "with negative index" do
        it {expect {fib.at(-1)}.to raise_error(RuntimeError)}
        it {expect {fib.at(-2)}.to raise_error(RuntimeError)}
        it {expect {fib.at(-5)}.to raise_error(RuntimeError)}
      end

      context "with lte 2" do
        it {fib.at(1).should == 0}
        it {fib.at(2).should == 1}
      end

      context "with gt 2" do
        it {fib.at(3).should  == 1}
        it {fib.at(4).should  == 2}
        it {fib.at(5).should  == 3}
        it {fib.at(6).should  == 5}
        it {fib.at(7).should  == 8}
        it {fib.at(8).should  == 13}
        it {fib.at(9).should  == 21}
        it {fib.at(10).should == 34}
      end
    end
  end

  describe "TriBonacci" do
    let(:tri) {Mulbocci.new([0, 0, 1])}

    describe "#at" do
      context "with 0" do
        it {expect {tri.at(0)}.to raise_error(RuntimeError)}
      end

      context "with negative index" do
        it {expect {tri.at(-1)}.to raise_error(RuntimeError)}
        it {expect {tri.at(-2)}.to raise_error(RuntimeError)}
        it {expect {tri.at(-5)}.to raise_error(RuntimeError)}
      end

      context "with lte 3" do
        it {tri.at(1).should == 0}
        it {tri.at(2).should == 0}
        it {tri.at(3).should == 1}
      end

      context "with gt 3" do
        it {tri.at(4).should  == 1}
        it {tri.at(5).should  == 2}
        it {tri.at(6).should  == 4}
        it {tri.at(7).should  == 7}
        it {tri.at(8).should  == 13}
        it {tri.at(9).should  == 24}
        it {tri.at(10).should == 44}
      end
    end
  end
end
