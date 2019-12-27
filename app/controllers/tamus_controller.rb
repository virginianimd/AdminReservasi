class TamusController < InheritedResources::Base

  private

    def tamu_params
      params.require(:tamu).permit(:published_at, :tglaktifitas, :kodebooking, :namatamu, :qty, :hotel, :negara, :telp, :email, :driver, :note, :paket_id)
    end

end
