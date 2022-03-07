class Library 
  attr_reader :isbn,
              :title,
              :publisher 

  def initialize(data)
    @isbn = data[:docs][0][:isbn]
    @title = data[:docs][0][:title]
    @publisher = data[:docs][0][:publisher]
  end 
end 