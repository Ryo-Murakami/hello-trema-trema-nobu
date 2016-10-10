# Hello World!
class HelloTrema < Trema::Controller
  def start(_args)
    #logger.info 'Trema started.'
    logger.info "#{self.class.to_s} started."
    #tremaがスタートした時
  end

  def switch_ready(datapath_id)
    logger.info "Hello #{datapath_id.to_hex}!"
    #スイッチが準備したときのハンドラ
  end
  
  def switch_disconnected(datapath_id)
    logger.info "Bye #{datapath_id.to_hex}"
    #スイッチが停止した時のハンドラ
    #停止方法は他のターミナルから trema stop
  end
end
