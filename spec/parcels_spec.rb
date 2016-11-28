require('rspec')
require('parcels')

describe('Parcels') do
  describe('#volume') do
    it('return the volume of a given parcel when height and width are inputs') do
      new_parcels = Parcels.new(5, 4, 5, 5, 5)
      expect(new_parcels.volume()).to(eq(20))
    end
  end

  describe('#cost_to_ship') do
    it('return the cost to ship a given parcel based on a number of factors') do
      new_parcels = Parcels.new(5, 10, 10, 100, 1)
      expect(new_parcels.cost_to_ship()).to(eq(500))
    end
  end
end
