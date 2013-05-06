module JasmineRails
  class SpecRunnerController < ApplicationController
    skip_authorization_check if defined?(CanCan)

    def index
      JasmineRails.reload_jasmine_config
    end
  end
end
