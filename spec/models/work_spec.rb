require 'spec_helper'

describe Work do
  before do
    image_link = "https://www.google.com/images/srpr/logo11w.png"
    @work = Work.new(
                      header:           "This is a header",
                      description:      "The description",
                      tile_image_link:  image_link
                    )
  end

  subject { @work }

  it { should respond_to :header }
  it { should respond_to :description }
  it { should be_valid }

  describe "when header is not present" do
    before { @work.header = " " }
    it { should_not be_valid }
  end

  describe "when header is too long" do
    before { @work.header = "a" * 51 }
    it { should_not be_valid }
  end

  describe "when tile_image_link is not present" do
    before { @work.tile_image_link = " " }
    it { should_not be_valid }
  end

  describe "when description is too long" do
    before { @work.description = "a" * 401 }
    it { should_not be_valid }
  end

  describe "when tile_image_link has the wrong format" do
    before { @work.tile_image_link = "google.com" }
    it { should_not be_valid }
  end
end