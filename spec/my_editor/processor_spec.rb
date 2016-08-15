require 'spec_helper'

describe MyEditor::Processor do
  before do
    @processor = MyEditor::Processor.new
  end

  describe "process" do
    it "insert content" do
      buffer = []
      command = "i\ntest\n."

     @processor.process(buffer, command).must_include("test")
    end

    it "with breakline" do
      buffer = []
      command = "i\n\ntest\n\n."

     @processor.process(buffer, command).must_include("\ntest\n")
    end

    it "with spaces" do
      buffer = []
      command = "i\ntest\n test1\n."

     @processor.process(buffer, command).must_include("test\n test1")
    end

    it "with spaces" do
      buffer = []
      command = "i\n    test\n."

     @processor.process(buffer, command).must_include("    test")
    end
  end
end
