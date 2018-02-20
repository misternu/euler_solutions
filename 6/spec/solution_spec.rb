require_relative '../solution'

describe 'Solution' do
  describe '#solution' do
    it 'solves the example problem' do
      expect(solution(10)).to be 2640
    end
  end
end
