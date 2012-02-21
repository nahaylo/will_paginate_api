require 'spec_helper'
require 'will_paginate'
require 'active_support'
require "active_support/i18n"
require "active_support/inflector"
require "action_controller"#::Metal

#require 'action_controller/base'
#require 'actionpack/lib/action_controller/metal/mime_responds'

class AbcController < ActionController::Base
  #respond_to :xml#, :json, :html

  def a
    puts 'yep'
    @abc = 'this is a test'
    #respond_with @abc
    respond_to do |format|
      #format.html
      format.any { render :xml => @abc.to_xml }
    end
  end
end

#class 

#module WillPaginateApi
  describe AbcController, :type => :controller do
    let(:controller) { AbcController.new }  
    let(:test_array) { [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12] }

    it 'should work' do
      #puts test_array
      controller.a
      puts test_array.paginate(:page => 2, :per_page => 5)
      #get :a 
    end
  end
#end
