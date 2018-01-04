require_relative '../solution'

describe 'Solution' do
  describe '#solution' do
    it 'solves the example problem' do
      expect(solution(10)).to be 2520
    end
  end
end
