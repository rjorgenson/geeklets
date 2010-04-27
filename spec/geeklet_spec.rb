require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'geeklet'

describe Geeklet do

  before { @geeklet = Geeklet.new }

  subject { @geeklet }

  it { should respond_to :run }
  
  describe :run do

    context "When params is nil" do      
      subject { @geeklet.run("group", nil)}
      it { should be_true }      
    end

    context "When params is empty" do      
      subject { @geeklet.run("group", [])}
      it { should be_true }      
    end

    context "When params has items" do
      subject { @geeklet.run("group", ["one", 2, "three"])}      
      it { should be_true }      
    end
    
    context "When params has 'help' as first item" do
      it "should show help and exit" do
        @geeklet.should_receive(:showHelp)
        Kernel.should_receive(:exit)
        
        @geeklet.run("group", ["Help", 2, "4.5"])
      end
    end

  end
  
  
  
  describe :showHelp do
    
    it "should display usage information" do
      @geeklet.should_receive(:name).and_return("Script Name")
      @geeklet.should_receive(:description).and_return("Some script description")
      Kernel.should_receive(:puts).with(
<<-EOS
    Geeklet: Script Name

    description: Some script description

    USAGE: goes here.
EOS
)      

      @geeklet.showHelp
    end
    
  end
  
  
end