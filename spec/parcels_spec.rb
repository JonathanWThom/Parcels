require('rspec')
require('parcels')

describe('Parcels') do
  describe('#volume') do
    it('return the volume of a given parcel when height and width are inputs') do
      new_parcels = Parcels.new(5, 4, 6, 5, 5, 5)
      expect(new_parcels.volume()).to(eq(20))
    end
  end

  describe('#surface_area') do
    it('return the surface area of a given parcel when height, width, and depth are inputs') do
      new_parcels = Parcels.new(5, 4, 6, 5, 5, 5)
      expect(new_parcels.surface_area()).to(eq(120))
    end
  end

  describe('#cost_to_ship') do
    it('return the cost to ship a given parcel based on a number of factors') do
      new_parcels = Parcels.new(5, 10, 0, 10, 100, 1)
      expect(new_parcels.cost_to_ship()).to(eq(500))
    end

    it('return the cost to ship a given parcel when depth is given') do
      new_parcels = Parcels.new(5, 10, 2, 10, 100, 1)
      expect(new_parcels.cost_to_ship()).to(eq(600))
    end
  end
end
