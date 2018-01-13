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

  end

  context 'helpers' do
  end
end
