RSpec.describe Table do
  describe '.new' do
    context 'with default size' do
      it 'width is 5' do
        expect(subject.width).to eq 5
      end

      it 'height is 5' do
        expect(subject.height).to eq 5
      end
    end

    context 'when size is given' do
      subject { described_class.new(width: 15, height: 32) }

      it 'width is given width' do
        expect(subject.width).to eq 15
      end

      it 'height is given height' do
        expect(subject.height).to eq 32
      end
    end
  end

  describe '#within_bounds?' do
    subject { described_class.new.within_bounds?(position) }

    context 'when x and y are WITHIN bounds' do
      let(:position) { Position.new(0, 4) }

      it { is_expected.to be true }
    end

    context 'when x is WITHIN bounds and y is OUT OF bounds' do
      [-1, 5].each do |out_of_bounds|
        context "with #{out_of_bounds} value" do
          let(:position) { Position.new(0, out_of_bounds) }

          it { is_expected.to be false }
        end
      end
    end

    context 'when y is WITHIN bounds and x is OUT OF bounds' do
      [-1, 5].each do |out_of_bounds|
        context "with #{out_of_bounds} value" do
          let(:position) { Position.new(out_of_bounds, 4) }

          it { is_expected.to be false }
        end
      end
    end

    context 'when x and y are OUT OF bounds' do
      [-1, 5].each do |out_of_bounds|
        context "with #{out_of_bounds} value" do
          let(:position) { Position.new(out_of_bounds, out_of_bounds) }

          it { is_expected.to be false }
        end
      end
    end
  end
end
