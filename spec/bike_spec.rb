# YouBike TDD 練習

# 收費規則

# 會員：
# 前 30 分鐘 5 元
# 超過 30 分鐘，但於 4 小時內還車，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。
# 超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。
# 非會員（單次租車）：
# 4 小時內，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。


require '../lib/bike'

# Timecop.scale(1800) do  #1秒當30分鐘用
# end

RSpec.describe Bike do
  context "會員" do
    it "30分鐘內" do
      bike = Bike.new(0)
      result = bike.member(10)
      expect(result).to be 5
    end

    it "未滿四小時" do
      bike = Bike.new(0)
      result = bike.member(40)
      expect(result).to be 15
    end

    it "超四低八" do
      bike = Bike.new(0)
      result = bike.member(300)
      expect(result).to be 115
    end

    it "超過八小" do
      bike = Bike.new(0)
      result = bike.member(540)
      expect(result).to be 315
    end
  end

  context "非會員" do
    it "四小時內" do
      bike = Bike.new(0)
      result = bike.nonmember(120)
      expect(result).to be 40
    end

    it "超八" do
      bike = Bike.new(0)
      result = bike.nonmember(300)
      expect(result).to be 120
    end
  end
end
