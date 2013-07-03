module VideosHelper
  def cod_video(cod)
    dividido = cod.split(':')
    dividido[-1]
  end
end
