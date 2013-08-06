require File.join(File.expand_path("../..", __FILE__), "my_class") 

describe ABC do
  before do
    ABC.class_variable_set(:@@config, {'download_URL' => 'koukouroukou'})
  end 
  it 'check the download url' do
    ABC_instance = ABC.new
    ABC_instance.method1.should == 'koukouroukou'
    puts ABC.class_variable_get(:@@config)
  end
end

