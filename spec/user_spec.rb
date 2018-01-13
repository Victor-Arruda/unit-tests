require 'user'
require 'byebug'

describe User do
  describe '.say_my_name' do
    subject { described_class.new(name, last_name).say_my_name }

    context 'when have name' do
      let(:name) { 'Otávio' }
      let(:last_name) { 'Shanks' }

      it { expect(subject).to eq("Meu nome é #{name} #{last_name}!") }
    end

    context 'when have last_name' do
      let(:name) { nil }
      let(:last_name) { 'Shanks' }

      it { expect(subject).to eq('O gio é gay!') }
    end

    context 'when no name' do
      let(:name) { nil }
      let(:last_name) { nil }

      it { expect(subject).to eq('O gio é gay!') }
    end
  end

  describe '.say_my_name_reverse' do
    subject { described_class.new(name, last_name).say_my_name_reverse }

    context 'when have name' do
      let(:name) { 'Otávio' }
      let(:last_name) { 'Shanks' }

      it { expect(subject).to eq('oivátO') }
    end

    context 'when have only last_name' do
      let(:name) { nil }
      let(:last_name) { 'Shanks' }

      it { expect(subject).to eq('sknahS') }
    end

    context 'when has no name or last_name' do
      let(:name) { nil }
      let(:last_name) { nil }

      it { expect(subject).to eq('O que diabos é o inverso de nulo?') }
    end
  end

  context 'helpers' do
    describe '.has_name?' do
      subject { described_class.new(name, last_name).has_name? }
      context 'when name is filled' do
        let(:name) { 'Vitin' }
        let(:last_name) { 'Arruda' }
        it { expect(subject).to eq true }
      end

      context 'when name is not filled' do
        let(:name) { nil }
        let(:last_name) { 'Arruda' }
        it { expect(subject).to eq false }
      end
    end

    describe '.has_last_name?' do
      subject { described_class.new(name, last_name).has_last_name? }
      context 'when last_name is filled' do
        let(:name) { 'Vitin' }
        let(:last_name) { 'Arruda' }
        it { expect(subject).to eq true }
      end

      context 'when last_name is not filled' do
        let(:name) { 'Victor' }
        let(:last_name) { nil }
        it { expect(subject).to eq false }
      end
    end
  end
end
