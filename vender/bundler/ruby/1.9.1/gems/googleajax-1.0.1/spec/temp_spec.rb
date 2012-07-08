require File.expand_path(File.dirname(__FILE__) + '/../lib/googleajax')
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "GoogleAjax (temp)" do
  it "returns results as a hash" do
    GoogleAjax.referer = "http://example.com"
    GoogleAjax::Language.translate("Ruby rocks", "en", "fr").should == "Ruby roches"
  end
end