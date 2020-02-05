module Mysql2
  class Statement
    def execute(*args, **kwargs)
      Thread.handle_interrupt(::Mysql2::Util::TIMEOUT_ERROR_CLASS => :never) do
        _execute(*args, **kwargs)
      end
    end
  end
end
