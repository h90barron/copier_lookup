require 'rails_helper'

# RSpec.describe Copier, type: :model do
#   pending "add some examples to (or delete) #{__FILE__}"
# end

describe Copier do 
  before { @copier = FactoryGirl.build(:copier) }
  
  subject { @copier }
  
  it { should respond_to(:name) }
  it { should respond_to(:manufacturer) }
  it { should respond_to(:papercut) }
  it { should respond_to(:coinop) }
  it { should respond_to(:card_reader) }
  
  it { should be_valid }
  
  it { should validate_uniqueness_of(:name) }
  
end
