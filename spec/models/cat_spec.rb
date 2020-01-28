require 'rails_helper'

RSpec.describe Cat, type: :model do

  it "requires name, age and enjoys" do
      expect { Cat.create! }.to raise_error(ActiveRecord::RecordInvalid)
  end
end
