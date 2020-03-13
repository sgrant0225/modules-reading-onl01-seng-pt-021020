require_relative './class_methods_module.rb'
require_relative './dance_module.rb'

#modules allow us to collect and bundle a group of methods and make those methods available to any number of classes

#include keyword allow our classes to use all of the methods of the included module as instance methods

class Dancer 
 #include Dance 
 #extend MetaDancing
 #below is how to create nested modules
 extend FancyDance::ClassMethods
  include FancyDance::InstanceMethods
 
 attr_accessor :name 
 
 def initialize(name)
   @name = name 
 end

end