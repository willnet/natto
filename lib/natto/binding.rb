module Natto

  # Module <tt>Binding</tt> encapsulates operations which are
  # made available via <tt>FFI</tt> bindings to <tt>mecab</tt>
  module Binding
    require 'ffi'
    require 'rbconfig'
    extend FFI::Library

    # String name for the environment variable used by 
    # <tt>Natto</tt> to indicate the exact name / full path
    # to the <tt>mecab</tt> library.
    MECAB_PATH = 'MECAB_PATH'
    
    # @private
    def self.included(base)
      base.extend(ClassMethods)
    end

    # Returns the name of the <tt>mecab</tt> library based on 
    # the runtime environment. The value of the environment
    # parameter <tt>MECAB_PATH</tt> is checked before this
    # function is invoked, and in the case of Windows, a
    # <tt>LoadError</tt> will be raised if <tt>MECAB_PATH</tt>
    # is <b>not</b> set to the full path of the <tt>mecab</tt>
    # library.
    def self.find_library
      host_os = RbConfig::CONFIG['host_os']

      if host_os =~ /mswin|mingw/i
        raise LoadError, "Please set #{MECAB_PATH} to full path to libmecab.dll"
      elsif host_os =~ /cygwin/i
        'cygmecab-1'
      else
        'mecab'
      end
    end

    ffi_lib(ENV[MECAB_PATH] || find_library)

    attach_function :mecab_version, [], :string
    attach_function :mecab_new2, [:string], :pointer
    attach_function :mecab_destroy, [:pointer], :void
    attach_function :mecab_sparse_tostr, [:pointer, :string], :string
    attach_function :mecab_strerror, [:pointer],:string
    attach_function :mecab_dictionary_info, [:pointer], :pointer

    # @private
    module ClassMethods
      def mecab_version
        Natto::Binding.mecab_version
      end
    end
  end
end
